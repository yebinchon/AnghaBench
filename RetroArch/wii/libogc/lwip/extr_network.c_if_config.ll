; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_if_config.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_if_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i8* }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @if_config(i8* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.in_addr, align 8
  %14 = alloca %struct.in_addr, align 8
  %15 = alloca %struct.in_addr, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %16 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i8* null, i8** %17, align 8
  %18 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @inet_addr(i8* %22)
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @inet_addr(i8* %29)
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @inet_addr(i8* %36)
  %38 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i64 @if_configex(%struct.in_addr* %13, %struct.in_addr* %14, %struct.in_addr* %15, i32 %40, i32 %41)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %6, align 8
  br label %81

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @TRUE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @inet_ntoa(i8* %57)
  %59 = call i32 @strcpy(i8* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @inet_ntoa(i8* %66)
  %68 = call i32 @strcpy(i8* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i8*, i8** %9, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @inet_ntoa(i8* %75)
  %77 = call i32 @strcpy(i8* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %69
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %6, align 8
  br label %81

81:                                               ; preds = %79, %45
  %82 = load i64, i64* %6, align 8
  ret i64 %82
}

declare dso_local i8* @inet_addr(i8*) #1

declare dso_local i64 @if_configex(%struct.in_addr*, %struct.in_addr*, %struct.in_addr*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @inet_ntoa(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
