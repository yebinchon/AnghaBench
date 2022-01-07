; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_maskedcopy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_maskedcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sockaddr*, %struct.sockaddr*, %struct.sockaddr*)* @rt_maskedcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_maskedcopy(%struct.sockaddr* %0, %struct.sockaddr* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %13 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8* %15, i8** %7, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8* %19, i8** %8, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  store i8* %23, i8** %9, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %25 = bitcast %struct.sockaddr* %24 to i8*
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MIN(i32 %28, i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %25, i64 %33
  store i8* %34, i8** %10, align 8
  %35 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %36 = bitcast %struct.sockaddr* %35 to i8*
  %37 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  store i8* %41, i8** %11, align 8
  %42 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %43 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %48 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %56, %3
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ult i8* %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i8, i8* %61, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %60, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %9, align 8
  store i8 %66, i8* %67, align 1
  br label %52

69:                                               ; preds = %52
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ult i8* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = call i32 @memset(i8* %74, i32 0, i64 %79)
  br label %81

81:                                               ; preds = %73, %69
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
