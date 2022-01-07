; ModuleID = '/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_svchax_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ctr/extr_ctr_svchax.c_svchax_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ctr_svchax = common dso_local global i32 0, align 4
@__service_ptr = common dso_local global i64 0, align 8
@k_enable_all_svcs = common dso_local global i64 0, align 8
@__ctr_svchax_srv = common dso_local global i32 0, align 4
@CURRENT_KPROCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svchax_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %10 = call i32 @APT_CheckNew3DS(i32* %4)
  %11 = call i64 (...) @osGetKernelVersion()
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @__ctr_svchax, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %57, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @__service_ptr, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @SYSTEM_VERSION(i32 2, i32 50, i32 11)
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = call i64 @get_luma_version(i64* %6, i64* %7)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ true, %21 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @R_FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %89

33:                                               ; preds = %27, %17
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @SYSTEM_VERSION(i32 2, i32 46, i32 0)
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @SYSTEM_VERSION(i32 2, i32 50, i32 11)
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @do_memchunkhax2()
  br label %50

43:                                               ; preds = %37, %33
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @SYSTEM_VERSION(i32 2, i32 46, i32 0)
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (...) @do_memchunkhax1()
  br label %49

49:                                               ; preds = %47, %43
  br label %50

50:                                               ; preds = %49, %41
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %14
  %53 = load i64, i64* @k_enable_all_svcs, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @svc_7b(i32 %54, i32 %55)
  store i32 1, i32* @__ctr_svchax, align 4
  br label %57

57:                                               ; preds = %52, %1
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  %61 = load i32, i32* @__ctr_svchax_srv, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %88, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @CURRENT_KPROCESS, align 8
  %65 = call i64 @read_kaddr(i64 %64)
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %75

69:                                               ; preds = %63
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @SYSTEM_VERSION(i32 2, i32 40, i32 0)
  %72 = icmp sgt i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 180, i32 172
  br label %75

75:                                               ; preds = %69, %68
  %76 = phi i32 [ 188, %68 ], [ %74, %69 ]
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %65, %77
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @read_kaddr(i64 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @write_kaddr(i64 %81, i64 0)
  %83 = call i32 (...) @srvExit()
  %84 = call i32 (...) @srvInit()
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @write_kaddr(i64 %85, i64 %86)
  store i32 1, i32* @__ctr_svchax_srv, align 4
  br label %88

88:                                               ; preds = %75, %60, %57
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %32
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @APT_CheckNew3DS(i32*) #1

declare dso_local i64 @osGetKernelVersion(...) #1

declare dso_local i64 @SYSTEM_VERSION(i32, i32, i32) #1

declare dso_local i64 @R_FAILED(i32) #1

declare dso_local i64 @get_luma_version(i64*, i64*) #1

declare dso_local i32 @do_memchunkhax2(...) #1

declare dso_local i32 @do_memchunkhax1(...) #1

declare dso_local i32 @svc_7b(i32, i32) #1

declare dso_local i64 @read_kaddr(i64) #1

declare dso_local i32 @write_kaddr(i64, i64) #1

declare dso_local i32 @srvExit(...) #1

declare dso_local i32 @srvInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
