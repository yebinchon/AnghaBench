; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updateiconoffsets.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_updateiconoffsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card_direntry = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64*, i64*, i32*, i32*, i64, i64 }

@CARD_BANNER_MASK = common dso_local global i32 0, align 4
@CARD_BANNER_CI = common dso_local global i32 0, align 4
@CARD_BANNER_RGB = common dso_local global i32 0, align 4
@CARD_MAXICONS = common dso_local global i64 0, align 8
@CARD_ICON_MASK = common dso_local global i64 0, align 8
@CARD_SPEED_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.card_direntry*, %struct.TYPE_3__*)* @__card_updateiconoffsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__card_updateiconoffsets(%struct.card_direntry* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.card_direntry*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.card_direntry* %0, %struct.card_direntry** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %11 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %24 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CARD_BANNER_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %22
  %30 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %31 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 16
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %74, label %35

35:                                               ; preds = %29
  %36 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %37 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CARD_BANNER_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CARD_BANNER_CI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 3072
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 3584
  store i32 %56, i32* %8, align 4
  br label %73

57:                                               ; preds = %35
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @CARD_BANNER_RGB, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 -1, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 6144
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %61, %57
  br label %73

73:                                               ; preds = %72, %44
  br label %79

74:                                               ; preds = %29
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i32 -1, i32* %78, align 8
  br label %79

79:                                               ; preds = %74, %73
  br label %80

80:                                               ; preds = %79, %22
  store i32 0, i32* %7, align 4
  store i64 0, i64* %5, align 8
  br label %81

81:                                               ; preds = %137, %80
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @CARD_MAXICONS, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %140

85:                                               ; preds = %81
  %86 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %87 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = shl i64 %89, 1
  %91 = lshr i64 %88, %90
  %92 = load i64, i64* @CARD_ICON_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  %99 = load %struct.card_direntry*, %struct.card_direntry** %3, align 8
  %100 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = shl i64 %102, 1
  %104 = lshr i64 %101, %103
  %105 = load i64, i64* @CARD_SPEED_MASK, align 8
  %106 = and i64 %104, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %106, i64* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %85
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i64*, i64** %121, align 8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %85
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 3
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* %5, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %125
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %133, %125
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %5, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %5, align 8
  br label %81

140:                                              ; preds = %81
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %9, align 4
  store i64 0, i64* %5, align 8
  br label %142

142:                                              ; preds = %213, %140
  %143 = load i64, i64* %5, align 8
  %144 = load i64, i64* @CARD_MAXICONS, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %216

146:                                              ; preds = %142
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 3
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %5, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  switch i64 %152, label %201 [
    i64 1, label %153
    i64 2, label %171
    i64 3, label %185
  ]

153:                                              ; preds = %146
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 5
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* %7, align 4
  %162 = mul nsw i32 %161, 1024
  %163 = add nsw i32 %160, %162
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  %166 = load i32*, i32** %165, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 %163, i32* %168, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1024
  store i32 %170, i32* %8, align 4
  br label %212

171:                                              ; preds = %146
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 -1, i32* %182, align 4
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 3072
  store i32 %184, i32* %8, align 4
  br label %212

185:                                              ; preds = %146
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %5, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1024
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 6
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* %5, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 %193, i32* %198, align 4
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, 1536
  store i32 %200, i32* %8, align 4
  br label %212

201:                                              ; preds = %146
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %5, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 -1, i32* %206, align 4
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 6
  %209 = load i32*, i32** %208, align 8
  %210 = load i64, i64* %5, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32 -1, i32* %211, align 4
  br label %212

212:                                              ; preds = %201, %185, %171, %153
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %5, align 8
  %215 = add i64 %214, 1
  store i64 %215, i64* %5, align 8
  br label %142

216:                                              ; preds = %142
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
