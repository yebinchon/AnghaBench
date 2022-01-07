; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sysctl.c_sysdoproc_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sysctl.c_sysdoproc_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysdoproc_args = type { i64, i64, i64, i64, i64, i32*, i32, i32, i32, i64, i32 }

@PROC_RETURNED = common dso_local global i32 0, align 4
@PROC_RETURNED_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysdoproc_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sysdoproc_args*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.sysdoproc_args*
  store %struct.sysdoproc_args* %9, %struct.sysdoproc_args** %6, align 8
  %10 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %11 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %14 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %116

17:                                               ; preds = %2
  %18 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %19 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %25 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %24, i32 0, i32 10
  %26 = call i64 @sysdoproc_filt_KERN_PROC_RUID(i32 %23, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %29, i32* %3, align 4
  br label %127

30:                                               ; preds = %22, %17
  %31 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %32 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %38 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %37, i32 0, i32 10
  %39 = call i64 @sysdoproc_filt_KERN_PROC_UID(i32 %36, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %42, i32* %3, align 4
  br label %127

43:                                               ; preds = %35, %30
  %44 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %45 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %51 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %50, i32 0, i32 10
  %52 = call i64 @sysdoproc_filt_KERN_PROC_TTY(i32 %49, i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %55, i32* %3, align 4
  br label %127

56:                                               ; preds = %48, %43
  %57 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %58 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %61 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bzero(i32 %59, i64 %62)
  %64 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %65 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %71 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @fill_user64_proc(i32 %69, i32 %72)
  br label %80

74:                                               ; preds = %56
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %77 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @fill_user32_proc(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %82 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %85 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %88 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @copyout(i32 %83, i32 %86, i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %96 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @PROC_RETURNED_DONE, align 4
  store i32 %98, i32* %3, align 4
  br label %127

99:                                               ; preds = %80
  %100 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %101 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %104 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %102
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 4
  %109 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %110 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %113 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %99, %2
  %117 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %118 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.sysdoproc_args*, %struct.sysdoproc_args** %6, align 8
  %121 = getelementptr inbounds %struct.sysdoproc_args, %struct.sysdoproc_args* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %119
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 8
  %126 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %116, %93, %54, %41, %28
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i64 @sysdoproc_filt_KERN_PROC_RUID(i32, i32*) #1

declare dso_local i64 @sysdoproc_filt_KERN_PROC_UID(i32, i32*) #1

declare dso_local i64 @sysdoproc_filt_KERN_PROC_TTY(i32, i32*) #1

declare dso_local i32 @bzero(i32, i64) #1

declare dso_local i32 @fill_user64_proc(i32, i32) #1

declare dso_local i32 @fill_user32_proc(i32, i32) #1

declare dso_local i32 @copyout(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
