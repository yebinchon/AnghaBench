; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_checkfat.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_checkfat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, %struct.card_bat*, %struct.card_bat* }
%struct.card_bat = type { i64, i64, i64, i64, i32* }

@CARD_SYSAREA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @__card_checkfat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__card_checkfat(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.card_bat*], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %103, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %106

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load %struct.card_bat*, %struct.card_bat** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 3
  %22 = shl i32 %21, 13
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %19, i64 %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %26
  store %struct.card_bat* %24, %struct.card_bat** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %29
  %31 = load %struct.card_bat*, %struct.card_bat** %30, align 8
  %32 = ptrtoint %struct.card_bat* %31 to i32
  %33 = add nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i64*
  %36 = call i32 @__card_checksum(i64* %35, i32 8188, i64* %8, i64* %9)
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %39
  %41 = load %struct.card_bat*, %struct.card_bat** %40, align 8
  %42 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %37, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %16
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %48
  %50 = load %struct.card_bat*, %struct.card_bat** %49, align 8
  %51 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %46, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %45, %16
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store %struct.card_bat* null, %struct.card_bat** %56, align 8
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %103

60:                                               ; preds = %45
  %61 = load i64, i64* @CARD_SYSAREA, align 8
  store i64 %61, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %84, %60
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %70
  %72 = load %struct.card_bat*, %struct.card_bat** %71, align 8
  %73 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @CARD_SYSAREA, align 8
  %77 = sub nsw i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %68
  %82 = load i64, i64* %12, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %81, %68
  %85 = load i64, i64* %11, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %62

87:                                               ; preds = %62
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %90
  %92 = load %struct.card_bat*, %struct.card_bat** %91, align 8
  %93 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %88, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %87
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store %struct.card_bat* null, %struct.card_bat** %98, align 8
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %96, %87
  br label %103

103:                                              ; preds = %102, %54
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %13

106:                                              ; preds = %13
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 0
  %112 = load %struct.card_bat*, %struct.card_bat** %111, align 16
  %113 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 1
  %116 = load %struct.card_bat*, %struct.card_bat** %115, align 8
  %117 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %114, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %122

121:                                              ; preds = %110
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %106
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load %struct.card_bat*, %struct.card_bat** %125, align 8
  %127 = icmp eq %struct.card_bat* %126, null
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %130
  %132 = load %struct.card_bat*, %struct.card_bat** %131, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store %struct.card_bat* %132, %struct.card_bat** %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %136
  %138 = load %struct.card_bat*, %struct.card_bat** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = xor i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 %141
  %143 = load %struct.card_bat*, %struct.card_bat** %142, align 8
  %144 = call i32 @memcpy(%struct.card_bat* %138, %struct.card_bat* %143, i32 8192)
  br label %155

145:                                              ; preds = %123
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load %struct.card_bat*, %struct.card_bat** %147, align 8
  %149 = getelementptr inbounds [2 x %struct.card_bat*], [2 x %struct.card_bat*]* %10, i64 0, i64 0
  %150 = load %struct.card_bat*, %struct.card_bat** %149, align 16
  %151 = icmp eq %struct.card_bat* %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %154

153:                                              ; preds = %145
  store i32 1, i32* %5, align 4
  br label %154

154:                                              ; preds = %153, %152
  br label %155

155:                                              ; preds = %154, %128
  %156 = load i32*, i32** %4, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %5, align 4
  %160 = load i32*, i32** %4, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @__card_checksum(i64*, i32, i64*, i64*) #1

declare dso_local i32 @memcpy(%struct.card_bat*, %struct.card_bat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
