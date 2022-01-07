; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32* }

@Cs2Area = common dso_local global %struct.TYPE_4__* null, align 8
@CART_NETLINK = common dso_local global i32 0, align 4
@CART_JAPMODEM = common dso_local global i32 0, align 4
@cdip = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Cs2Init(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %15 = call i64 @malloc(i32 24)
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** @Cs2Area, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %72

19:                                               ; preds = %6
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %21 = call i32 @memset(%struct.TYPE_4__* %20, i32 0, i32 24)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @Cs2ChangeCDCore(i32 %30, i8* %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %72

36:                                               ; preds = %19
  %37 = call i32 (...) @Cs2Reset()
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CART_NETLINK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @NetlinkInit(i8* %44, i8* %45)
  store i32 %46, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %7, align 4
  br label %72

50:                                               ; preds = %43
  br label %66

51:                                               ; preds = %36
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Cs2Area, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CART_JAPMODEM, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @JapModemInit(i8* %58, i8* %59)
  store i32 %60, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %7, align 4
  br label %72

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %51
  br label %66

66:                                               ; preds = %65, %50
  %67 = call i64 @calloc(i32 4, i32 1)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** @cdip, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %7, align 4
  br label %72

71:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %71, %70, %62, %48, %34, %18
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @Cs2ChangeCDCore(i32, i8*) #1

declare dso_local i32 @Cs2Reset(...) #1

declare dso_local i32 @NetlinkInit(i8*, i8*) #1

declare dso_local i32 @JapModemInit(i8*, i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
