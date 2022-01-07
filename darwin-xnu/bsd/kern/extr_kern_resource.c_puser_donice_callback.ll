; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_puser_donice_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_puser_donice_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puser_nice_args = type { i64, i32*, i32*, i32, i32 }

@PROC_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @puser_donice_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @puser_donice_callback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.puser_nice_args*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.puser_nice_args*
  store %struct.puser_nice_args* %10, %struct.puser_nice_args** %7, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @kauth_cred_proc_ref(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @kauth_cred_getuid(i32 %13)
  %15 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %16 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %21 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %25 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @donice(i32 %22, i32 %23, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %29 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %35 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %19
  %38 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %39 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %44 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.puser_nice_args*, %struct.puser_nice_args** %7, align 8
  %50 = getelementptr inbounds %struct.puser_nice_args, %struct.puser_nice_args* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %37
  br label %53

53:                                               ; preds = %52, %2
  %54 = call i32 @kauth_cred_unref(i32* %8)
  %55 = load i32, i32* @PROC_RETURNED, align 4
  ret i32 %55
}

declare dso_local i32 @kauth_cred_proc_ref(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @donice(i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
