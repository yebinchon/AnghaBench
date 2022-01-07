; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612Write_940.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_940ctl.c_YM2612Write_940.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32*, i32*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@addr_A1 = common dso_local global i32 0, align 4
@ST_address = common dso_local global i32 0, align 4
@currentConfig = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@shared_ctl = common dso_local global %struct.TYPE_6__* null, align 8
@writebuff_ptr = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"warning: writebuff_ptr > 2047 ([%i] %02x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YM2612Write_940(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %47 [
    i32 0, label %14
    i32 2, label %37
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @addr_A1, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* @ST_address, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %114

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @ST_address, align 4
  store i32 0, i32* @addr_A1, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 36
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 38
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 42
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %29, %26, %22
  store i32 0, i32* %4, align 4
  br label %114

36:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %47

37:                                               ; preds = %3
  %38 = load i32, i32* @addr_A1, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @ST_address, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %114

45:                                               ; preds = %40, %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* @ST_address, align 4
  store i32 1, i32* @addr_A1, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %3, %45, %36
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @currentConfig, i32 0, i32 0), align 4
  %49 = and i32 %48, 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  br label %64

60:                                               ; preds = %51
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_ctl, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32* [ %59, %56 ], [ %63, %60 ]
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %64
  %69 = load i32, i32* @writebuff_ptr, align 4
  %70 = and i32 %69, -2147483648
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 224
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0, i32 0), align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 68, i32 93
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %75
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @writebuff_ptr, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @writebuff_ptr, align 4
  %87 = and i32 %85, 65535
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32 65534, i32* %89, align 4
  %90 = load i32, i32* @writebuff_ptr, align 4
  %91 = or i32 %90, -2147483648
  store i32 %91, i32* @writebuff_ptr, align 4
  br label %92

92:                                               ; preds = %83, %75
  br label %93

93:                                               ; preds = %92, %72, %68, %64
  %94 = load i32, i32* @writebuff_ptr, align 4
  %95 = and i32 %94, 65535
  %96 = icmp slt i32 %95, 2047
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32, i32* %5, align 4
  %99 = shl i32 %98, 8
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* @writebuff_ptr, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @writebuff_ptr, align 4
  %105 = and i32 %103, 65535
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  store i32 %101, i32* %107, align 4
  br label %112

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %97
  br label %113

113:                                              ; preds = %112, %47
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %113, %44, %35, %21
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
