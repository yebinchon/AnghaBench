; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_xpcm.c_PicoPicoPCMUpdate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_xpcm.c_PicoPicoPCMUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }

@PicoPicohw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stepsamples = common dso_local global i64 0, align 8
@sample = common dso_local global i32 0, align 4
@sgn = common dso_local global i32 0, align 4
@EL_PICOHW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"xpcm update: over %i\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"xpcm update: under %i\00", align 1
@quant = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoPicoPCMUpdate(i16* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %163

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %132, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ult i8* %23, %24
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %28, label %135

28:                                               ; preds = %26
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = ashr i32 %31, 4
  store i32 %32, i32* %9, align 4
  %33 = call i32 (...) @do_sample()
  %34 = load i64, i64* @stepsamples, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %66, %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp sgt i32 %40, 1024
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %71

47:                                               ; preds = %45
  %48 = load i32, i32* @sample, align 4
  %49 = load i16*, i16** %4, align 8
  %50 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %50, i16** %4, align 8
  %51 = load i16, i16* %49, align 2
  %52 = sext i16 %51 to i32
  %53 = add nsw i32 %52, %48
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %49, align 2
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load i16*, i16** %4, align 8
  %59 = getelementptr inbounds i16, i16* %58, i64 -1
  %60 = load i16, i16* %59, align 2
  %61 = load i16*, i16** %4, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 0
  store i16 %60, i16* %62, align 2
  %63 = load i16*, i16** %4, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %4, align 8
  br label %65

65:                                               ; preds = %57, %47
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1024
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  br label %39

71:                                               ; preds = %45
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 15
  store i32 %75, i32* %9, align 4
  %76 = call i32 (...) @do_sample()
  %77 = load i64, i64* @stepsamples, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %109, %71
  %83 = load i32, i32* %10, align 4
  %84 = icmp sgt i32 %83, 1024
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = icmp sgt i32 %86, 0
  br label %88

88:                                               ; preds = %85, %82
  %89 = phi i1 [ false, %82 ], [ %87, %85 ]
  br i1 %89, label %90, label %114

90:                                               ; preds = %88
  %91 = load i32, i32* @sample, align 4
  %92 = load i16*, i16** %4, align 8
  %93 = getelementptr inbounds i16, i16* %92, i32 1
  store i16* %93, i16** %4, align 8
  %94 = load i16, i16* %92, align 2
  %95 = sext i16 %94 to i32
  %96 = add nsw i32 %95, %91
  %97 = trunc i32 %96 to i16
  store i16 %97, i16* %92, align 2
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = load i16*, i16** %4, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 -1
  %103 = load i16, i16* %102, align 2
  %104 = load i16*, i16** %4, align 8
  %105 = getelementptr inbounds i16, i16* %104, i64 0
  store i16 %103, i16* %105, align 2
  %106 = load i16*, i16** %4, align 8
  %107 = getelementptr inbounds i16, i16* %106, i32 1
  store i16* %107, i16** %4, align 8
  br label %108

108:                                              ; preds = %100, %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, 1024
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %5, align 4
  br label %82

114:                                              ; preds = %88
  %115 = load i32, i32* @sample, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 -1, i32 1
  %119 = load i32, i32* @sgn, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @sgn, align 4
  %121 = load i32, i32* @sgn, align 4
  %122 = icmp slt i32 %121, -16
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @sgn, align 4
  %125 = icmp sgt i32 %124, 16
  br i1 %125, label %126, label %131

126:                                              ; preds = %123, %114
  %127 = load i32, i32* @sample, align 4
  %128 = ashr i32 %127, 5
  %129 = load i32, i32* @sample, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* @sample, align 4
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  br label %19

135:                                              ; preds = %26
  %136 = load i8*, i8** %7, align 8
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ult i8* %136, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  %146 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %147 = load i8*, i8** %7, align 8
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @memmove(i8* %146, i8* %147, i32 %148)
  %150 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8* %153, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %154 = load i32, i32* @EL_PICOHW, align 4
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @elprintf(i32 %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* %11, align 4
  store i32 %157, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  br label %183

158:                                              ; preds = %135
  %159 = load i32, i32* @EL_PICOHW, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @elprintf(i32 %159, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  store i8* %162, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  br label %163

163:                                              ; preds = %158, %17
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %176, %166
  %168 = load i32, i32* %5, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = load i16*, i16** %4, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 0
  %173 = load i16, i16* %172, align 2
  %174 = load i16*, i16** %4, align 8
  %175 = getelementptr inbounds i16, i16* %174, i64 1
  store i16 %173, i16* %175, align 2
  br label %176

176:                                              ; preds = %170
  %177 = load i16*, i16** %4, align 8
  %178 = getelementptr inbounds i16, i16* %177, i64 2
  store i16* %178, i16** %4, align 8
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %5, align 4
  br label %167

181:                                              ; preds = %167
  br label %182

182:                                              ; preds = %181, %163
  store i32 0, i32* @sgn, align 4
  store i32 0, i32* @sample, align 4
  store i32 127, i32* @quant, align 4
  br label %183

183:                                              ; preds = %182, %139
  ret void
}

declare dso_local i32 @do_sample(...) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
