; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivgt_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_voucher.c_ivgt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64 }

@MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN = common dso_local global i64 0, align 8
@iv_global_table = common dso_local global %struct.TYPE_7__* null, align 8
@IVAC_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@IVAM_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, %struct.TYPE_6__**)* @ivgt_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivgt_lookup(i64 %0, i64 %1, i32* %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @MACH_VOUCHER_ATTR_KEY_NUM_WELL_KNOWN, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %59

13:                                               ; preds = %4
  %14 = call i32 (...) @ivgt_lock()
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* null, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iv_global_table, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %17, %13
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @iv_global_table, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IVAC_NULL, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = icmp ne %struct.TYPE_6__* %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %24
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %45 = icmp ne %struct.TYPE_6__** null, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = call i32 @ivac_reference(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %43, %33
  br label %51

51:                                               ; preds = %50, %24
  %52 = call i32 (...) @ivgt_unlock()
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %54 = icmp ne %struct.TYPE_6__** null, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %55, %51
  br label %72

59:                                               ; preds = %4
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* null, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @IVAM_NULL, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %67 = icmp ne %struct.TYPE_6__** null, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IVAC_NULL, align 8
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %70, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %58
  ret void
}

declare dso_local i32 @ivgt_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ivac_reference(%struct.TYPE_6__*) #1

declare dso_local i32 @ivgt_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
