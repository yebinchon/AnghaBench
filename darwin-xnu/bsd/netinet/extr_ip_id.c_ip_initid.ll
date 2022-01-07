; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_id.c_ip_initid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_id.c_ip_initid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id_array = common dso_local global i32* null, align 8
@id_bits = common dso_local global i32* null, align 8
@ARRAY_SIZE = common dso_local global i32 0, align 4
@ipid_lock_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ipid\00", align 1
@ipid_lock_grp = common dso_local global i32 0, align 4
@ipid_lock_attr = common dso_local global i32 0, align 4
@ipid_lock = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_initid() #0 {
  %1 = load i32*, i32** @id_array, align 8
  %2 = icmp eq i32* %1, null
  %3 = zext i1 %2 to i32
  %4 = call i32 @VERIFY(i32 %3)
  %5 = load i32*, i32** @id_bits, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @VERIFY(i32 %7)
  %9 = load i32, i32* @ARRAY_SIZE, align 4
  %10 = icmp sge i32 %9, 512
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @ARRAY_SIZE, align 4
  %13 = icmp sle i32 %12, 32768
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @_CASSERT(i32 %16)
  %18 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %18, i32* @ipid_lock_grp_attr, align 4
  %19 = load i32, i32* @ipid_lock_grp_attr, align 4
  %20 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* @ipid_lock_grp, align 4
  %21 = call i32 (...) @lck_attr_alloc_init()
  store i32 %21, i32* @ipid_lock_attr, align 4
  %22 = load i32, i32* @ipid_lock_grp, align 4
  %23 = load i32, i32* @ipid_lock_attr, align 4
  %24 = call i32 @lck_mtx_init(i32* @ipid_lock, i32 %22, i32 %23)
  %25 = load i32, i32* @ARRAY_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @M_TEMP, align 4
  %30 = load i32, i32* @M_WAITOK, align 4
  %31 = load i32, i32* @M_ZERO, align 4
  %32 = or i32 %30, %31
  %33 = call i64 @_MALLOC(i32 %28, i32 %29, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** @id_array, align 8
  %35 = call i32 @bitstr_size(i32 65536)
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @_MALLOC(i32 %35, i32 %36, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** @id_bits, align 8
  %42 = load i32*, i32** @id_array, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %14
  %45 = load i32*, i32** @id_bits, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %44, %14
  %48 = load i32*, i32** @id_array, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32*, i32** @id_array, align 8
  %52 = load i32, i32* @M_TEMP, align 4
  %53 = call i32 @_FREE(i32* %51, i32 %52)
  store i32* null, i32** @id_array, align 8
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32*, i32** @id_bits, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** @id_bits, align 8
  %59 = load i32, i32* @M_TEMP, align 4
  %60 = call i32 @_FREE(i32* %58, i32 %59)
  store i32* null, i32** @id_bits, align 8
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %44
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @_CASSERT(i32) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i64 @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @bitstr_size(i32) #1

declare dso_local i32 @_FREE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
