; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soopt_cred_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket.c_soopt_cred_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32*, i32 }

@PROC_NULL = common dso_local global i64 0, align 8
@SOF_DELEGATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @soopt_cred_check(%struct.socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %11 = load i64, i64* @PROC_NULL, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SOF_DELEGATED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @proc_find(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = call i32* @kauth_cred_proc_ref(i64 %26)
  store i32* %27, i32** %7, align 8
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32*, i32** %7, align 8
  br label %38

34:                                               ; preds = %29
  %35 = load %struct.socket*, %struct.socket** %4, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32* [ %33, %32 ], [ %37, %34 ]
  %40 = call i64 @kauth_cred_getuid(i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %43, %38
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  br label %55

51:                                               ; preds = %46
  %52 = load %struct.socket*, %struct.socket** %4, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i32* [ %50, %49 ], [ %54, %51 ]
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @priv_check_cred(i32* %56, i32 %57, i32 0)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %55, %43
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 @kauth_cred_unref(i32** %7)
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @PROC_NULL, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @proc_rele(i64 %69)
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i64 @proc_find(i32) #1

declare dso_local i32* @kauth_cred_proc_ref(i64) #1

declare dso_local i64 @kauth_cred_getuid(i32*) #1

declare dso_local i32 @priv_check_cred(i32*, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32**) #1

declare dso_local i32 @proc_rele(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
