; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_tunnel.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perclient = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perclient*, i32*)* @tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tunnel(%struct.perclient* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perclient*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [512 x i8], align 16
  store %struct.perclient* %0, %struct.perclient** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.perclient*, %struct.perclient** %4, align 8
  %10 = getelementptr inbounds %struct.perclient, %struct.perclient* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @FD_ISSET(i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.perclient*, %struct.perclient** %4, align 8
  %17 = getelementptr inbounds %struct.perclient, %struct.perclient* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %20 = call i64 @recv(i32 %18, i8* %19, i32 512, i32 0)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.perclient*, %struct.perclient** %4, align 8
  %25 = getelementptr inbounds %struct.perclient, %struct.perclient* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %28 = load i64, i64* %6, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @send(i32 %26, i8* %27, i32 %29, i32 0)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %83

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.perclient*, %struct.perclient** %4, align 8
  %38 = getelementptr inbounds %struct.perclient, %struct.perclient* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %36
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %38, align 4
  br label %44

43:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %83

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.perclient*, %struct.perclient** %4, align 8
  %47 = getelementptr inbounds %struct.perclient, %struct.perclient* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = call i64 @FD_ISSET(i32 %48, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %45
  %53 = load %struct.perclient*, %struct.perclient** %4, align 8
  %54 = getelementptr inbounds %struct.perclient, %struct.perclient* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %57 = call i64 @recv(i32 %55, i8* %56, i32 512, i32 0)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  %61 = load %struct.perclient*, %struct.perclient** %4, align 8
  %62 = getelementptr inbounds %struct.perclient, %struct.perclient* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @send(i32 %63, i8* %64, i32 %66, i32 0)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %83

72:                                               ; preds = %60
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.perclient*, %struct.perclient** %4, align 8
  %75 = getelementptr inbounds %struct.perclient, %struct.perclient* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  br label %81

80:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %83

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %45
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %80, %71, %43, %34
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
