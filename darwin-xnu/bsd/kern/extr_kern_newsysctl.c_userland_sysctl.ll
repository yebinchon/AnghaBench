; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_userland_sysctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_userland_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @userland_sysctl(i32 %0, i8* %1, i64 %2, i32* %3, i32 %4, %struct.sysctl_req* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sysctl_req*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.sysctl_req, align 8
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.sysctl_req* %5, %struct.sysctl_req** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %35, %7
  %19 = load %struct.sysctl_req*, %struct.sysctl_req** %14, align 8
  %20 = bitcast %struct.sysctl_req* %17 to i8*
  %21 = bitcast %struct.sysctl_req* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  store i8 0, i8* %26, align 1
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @sysctl_root(i32 %28, i32 %29, i8* %30, i64 %31, i32* %32, i32 %33, %struct.sysctl_req* %17)
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %18, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %72

48:                                               ; preds = %42, %39
  %49 = load i64*, i64** %15, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ugt i64 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %15, align 8
  store i64 %63, i64* %64, align 8
  br label %69

65:                                               ; preds = %55, %51
  %66 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %17, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %15, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %46
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sysctl_root(i32, i32, i8*, i64, i32*, i32, %struct.sysctl_req*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
