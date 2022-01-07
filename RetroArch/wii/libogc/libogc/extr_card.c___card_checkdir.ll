; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_checkdir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_checkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.card_dircntrl*, %struct.card_dircntrl* }
%struct.card_dircntrl = type { i64, i64, i64 }
%struct.card_dat = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @__card_checkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__card_checkdir(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.card_dircntrl*], align 16
  %11 = alloca [2 x %struct.card_dat*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %69, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %72

15:                                               ; preds = %12
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load %struct.card_dircntrl*, %struct.card_dircntrl** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = shl i32 %20, 13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %18, i64 %22
  %24 = bitcast %struct.card_dircntrl* %23 to %struct.card_dat*
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 %26
  store %struct.card_dat* %24, %struct.card_dat** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.card_dircntrl*, %struct.card_dircntrl** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = shl i32 %32, 13
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %30, i64 %34
  %36 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %35, i64 8128
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.card_dircntrl*], [2 x %struct.card_dircntrl*]* %10, i64 0, i64 %38
  store %struct.card_dircntrl* %36, %struct.card_dircntrl** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 %41
  %43 = load %struct.card_dat*, %struct.card_dat** %42, align 8
  %44 = bitcast %struct.card_dat* %43 to i64*
  %45 = call i32 @__card_checksum(i64* %44, i32 8188, i64* %8, i64* %9)
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x %struct.card_dircntrl*], [2 x %struct.card_dircntrl*]* %10, i64 0, i64 %48
  %50 = load %struct.card_dircntrl*, %struct.card_dircntrl** %49, align 8
  %51 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %15
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x %struct.card_dircntrl*], [2 x %struct.card_dircntrl*]* %10, i64 0, i64 %57
  %59 = load %struct.card_dircntrl*, %struct.card_dircntrl** %58, align 8
  %60 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54, %15
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %struct.card_dircntrl* null, %struct.card_dircntrl** %65, align 8
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds [2 x %struct.card_dircntrl*], [2 x %struct.card_dircntrl*]* %10, i64 0, i64 0
  %78 = load %struct.card_dircntrl*, %struct.card_dircntrl** %77, align 16
  %79 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [2 x %struct.card_dircntrl*], [2 x %struct.card_dircntrl*]* %10, i64 0, i64 1
  %82 = load %struct.card_dircntrl*, %struct.card_dircntrl** %81, align 8
  %83 = getelementptr inbounds %struct.card_dircntrl, %struct.card_dircntrl* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %88

87:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load %struct.card_dircntrl*, %struct.card_dircntrl** %91, align 8
  %93 = icmp eq %struct.card_dircntrl* %92, null
  br i1 %93, label %94, label %114

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 %96
  %98 = load %struct.card_dat*, %struct.card_dat** %97, align 8
  %99 = bitcast %struct.card_dat* %98 to %struct.card_dircntrl*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store %struct.card_dircntrl* %99, %struct.card_dircntrl** %101, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 %103
  %105 = load %struct.card_dat*, %struct.card_dat** %104, align 8
  %106 = bitcast %struct.card_dat* %105 to %struct.card_dircntrl*
  %107 = load i32, i32* %5, align 4
  %108 = xor i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 %109
  %111 = load %struct.card_dat*, %struct.card_dat** %110, align 8
  %112 = bitcast %struct.card_dat* %111 to %struct.card_dircntrl*
  %113 = call i32 @memcpy(%struct.card_dircntrl* %106, %struct.card_dircntrl* %112, i32 8192)
  br label %125

114:                                              ; preds = %89
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load %struct.card_dircntrl*, %struct.card_dircntrl** %116, align 8
  %118 = getelementptr inbounds [2 x %struct.card_dat*], [2 x %struct.card_dat*]* %11, i64 0, i64 0
  %119 = load %struct.card_dat*, %struct.card_dat** %118, align 16
  %120 = bitcast %struct.card_dat* %119 to %struct.card_dircntrl*
  %121 = icmp eq %struct.card_dircntrl* %117, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  store i32 0, i32* %5, align 4
  br label %124

123:                                              ; preds = %114
  store i32 1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %94
  %126 = load i32*, i32** %4, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* %5, align 4
  %130 = load i32*, i32** %4, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i32 @__card_checksum(i64*, i32, i64*, i64*) #1

declare dso_local i32 @memcpy(%struct.card_dircntrl*, %struct.card_dircntrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
