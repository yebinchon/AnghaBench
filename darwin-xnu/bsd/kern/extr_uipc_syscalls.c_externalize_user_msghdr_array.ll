; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_externalize_user_msghdr_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_syscalls.c_externalize_user_msghdr_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_msghdr_x = type { i64, i32 }
%struct.uio = type { i32 }
%struct.user64_msghdr_x = type { i64, i32 }
%struct.user32_msghdr_x = type { i64, i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @externalize_user_msghdr_array(i8* %0, i32 %1, i32 %2, i32 %3, %struct.user_msghdr_x* %4, %struct.uio** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.user_msghdr_x*, align 8
  %12 = alloca %struct.uio**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.user_msghdr_x*, align 8
  %17 = alloca %struct.uio*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.user64_msghdr_x*, align 8
  %20 = alloca %struct.user32_msghdr_x*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.user_msghdr_x* %4, %struct.user_msghdr_x** %11, align 8
  store %struct.uio** %5, %struct.uio*** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %88, %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %91

25:                                               ; preds = %21
  %26 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %11, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %26, i64 %28
  store %struct.user_msghdr_x* %29, %struct.user_msghdr_x** %16, align 8
  %30 = load %struct.uio**, %struct.uio*** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.uio*, %struct.uio** %30, i64 %32
  %34 = load %struct.uio*, %struct.uio** %33, align 8
  store %struct.uio* %34, %struct.uio** %17, align 8
  %35 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %36 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.uio*, %struct.uio** %17, align 8
  %39 = call i64 @uio_resid(%struct.uio* %38)
  %40 = sub nsw i64 %37, %39
  store i64 %40, i64* %18, align 8
  %41 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %42 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load i64, i64* %18, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %49

49:                                               ; preds = %48, %45, %25
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @UIO_USERSPACE64, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load i8*, i8** %7, align 8
  %61 = bitcast i8* %60 to %struct.user64_msghdr_x*
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %61, i64 %63
  store %struct.user64_msghdr_x* %64, %struct.user64_msghdr_x** %19, align 8
  %65 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %66 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %19, align 8
  %69 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load %struct.user64_msghdr_x*, %struct.user64_msghdr_x** %19, align 8
  %72 = getelementptr inbounds %struct.user64_msghdr_x, %struct.user64_msghdr_x* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %87

73:                                               ; preds = %55
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to %struct.user32_msghdr_x*
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %75, i64 %77
  store %struct.user32_msghdr_x* %78, %struct.user32_msghdr_x** %20, align 8
  %79 = load %struct.user_msghdr_x*, %struct.user_msghdr_x** %16, align 8
  %80 = getelementptr inbounds %struct.user_msghdr_x, %struct.user_msghdr_x* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %20, align 8
  %83 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.user32_msghdr_x*, %struct.user32_msghdr_x** %20, align 8
  %86 = getelementptr inbounds %struct.user32_msghdr_x, %struct.user32_msghdr_x* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %73, %59
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  br label %21

91:                                               ; preds = %21
  %92 = load i32, i32* %15, align 4
  ret i32 %92
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
