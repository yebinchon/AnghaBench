; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetSubcodeQRW.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_cs2.c_Cs2GetSubcodeQRW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32, i32*, %struct.TYPE_5__, i32, %struct.TYPE_4__, i8**, i32, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@Cs2Area = common dso_local global %struct.TYPE_6__* null, align 8
@Cs2GetSubcodeQRW.lastfad = internal global i32 0, align 4
@Cs2GetSubcodeQRW.group = internal global i32 0, align 4
@CDB_HIRQ_CMOK = common dso_local global i32 0, align 4
@CDB_HIRQ_DRDY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Cs2GetSubcodeQRW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 255
  switch i32 %13, label %181 [
    i32 0, label %14
    i32 1, label %119
  ]

14:                                               ; preds = %0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 5, i32* %24, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 16777215
  %45 = sub nsw i32 %33, %44
  store i32 %45, i32* %1, align 4
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @Cs2FADToMSF(i32 %46, i32* %2, i32* %3, i32* %4)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @Cs2FADToMSF(i32 %50, i32* %5, i32* %6, i32* %7)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 11
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 8
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  store i8* %54, i8** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ToBCD(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 8
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 1
  store i8* %62, i8** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @ToBCD(i32 %69)
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  store i8* %70, i8** %74, align 8
  %75 = load i32, i32* %2, align 4
  %76 = call i8* @ToBCD(i32 %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 8
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 3
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i8* @ToBCD(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 8
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 4
  store i8* %82, i8** %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i8* @ToBCD(i32 %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 8
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 5
  store i8* %88, i8** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 8
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 6
  store i8* null, i8** %96, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i8* @ToBCD(i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 8
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 7
  store i8* %98, i8** %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i8* @ToBCD(i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 8
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 8
  store i8* %104, i8** %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i8* @ToBCD(i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 8
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 9
  store i8* %110, i8** %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 6
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 3, i32* %118, align 8
  br label %182

119:                                              ; preds = %0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 12, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  store i32 0, i32* %132, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @Cs2GetSubcodeQRW.lastfad, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %119
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* @Cs2GetSubcodeQRW.lastfad, align 4
  store i32 0, i32* @Cs2GetSubcodeQRW.group, align 4
  br label %145

142:                                              ; preds = %119
  %143 = load i32, i32* @Cs2GetSubcodeQRW.group, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @Cs2GetSubcodeQRW.group, align 4
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32, i32* @Cs2GetSubcodeQRW.group, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 8
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %173, %145
  %151 = load i32, i32* %8, align 4
  %152 = icmp slt i32 %151, 24
  br i1 %152, label %153, label %176

153:                                              ; preds = %150
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 7
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 2352, %158
  %160 = load i32, i32* @Cs2GetSubcodeQRW.group, align 4
  %161 = mul nsw i32 24, %160
  %162 = add nsw i32 %159, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %157, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 63
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  br label %173

173:                                              ; preds = %153
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %150

176:                                              ; preds = %150
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 6
  store i32 0, i32* %178, align 4
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 3
  store i32 4, i32* %180, align 8
  br label %182

181:                                              ; preds = %0
  br label %182

182:                                              ; preds = %181, %176, %14
  %183 = load i32, i32* @CDB_HIRQ_CMOK, align 4
  %184 = load i32, i32* @CDB_HIRQ_DRDY, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Cs2Area, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %185
  store i32 %190, i32* %188, align 4
  ret void
}

declare dso_local i32 @Cs2FADToMSF(i32, i32*, i32*, i32*) #1

declare dso_local i8* @ToBCD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
