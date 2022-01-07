; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1258.h_cp1258_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp1258.h_cp1258_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16 }

@cp1258_2uni = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@viet_comp_table = common dso_local global %struct.TYPE_7__* null, align 8
@viet_comp_table_data = common dso_local global %struct.TYPE_6__* null, align 8
@cp1258_comp_bases = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i8*, i32)* @cp1258_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp1258_mbtowc(%struct.TYPE_5__* %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %10, align 1
  %19 = load i8, i8* %10, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8, i8* %10, align 1
  %24 = zext i8 %23 to i16
  store i16 %24, i16* %11, align 2
  br label %39

25:                                               ; preds = %4
  %26 = load i16*, i16** @cp1258_2uni, align 8
  %27 = load i8, i8* %10, align 1
  %28 = zext i8 %27 to i32
  %29 = sub nsw i32 %28, 128
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i16, i16* %26, i64 %30
  %32 = load i16, i16* %31, align 2
  store i16 %32, i16* %11, align 2
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, 65533
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %37, i32* %5, align 4
  br label %210

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %12, align 2
  %43 = load i16, i16* %12, align 2
  %44 = icmp ne i16 %43, 0
  br i1 %44, label %45, label %177

45:                                               ; preds = %39
  %46 = load i16, i16* %11, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sge i32 %47, 768
  br i1 %48, label %49, label %170

49:                                               ; preds = %45
  %50 = load i16, i16* %11, align 2
  %51 = zext i16 %50 to i32
  %52 = icmp slt i32 %51, 832
  br i1 %52, label %53, label %170

53:                                               ; preds = %49
  %54 = load i16, i16* %11, align 2
  %55 = zext i16 %54 to i32
  switch i32 %55, label %61 [
    i32 768, label %56
    i32 769, label %57
    i32 771, label %58
    i32 777, label %59
    i32 803, label %60
  ]

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %63

57:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %63

58:                                               ; preds = %53
  store i32 2, i32* %13, align 4
  br label %63

59:                                               ; preds = %53
  store i32 3, i32* %13, align 4
  br label %63

60:                                               ; preds = %53
  store i32 4, i32* %13, align 4
  br label %63

61:                                               ; preds = %53
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %60, %59, %58, %57, %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @viet_comp_table, align 8
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @viet_comp_table, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %70, %76
  %78 = sub i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load i16, i16* %12, align 2
  %80 = zext i16 %79 to i32
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i16, i16* %85, align 2
  %87 = zext i16 %86 to i32
  %88 = icmp sge i32 %80, %87
  br i1 %88, label %89, label %169

89:                                               ; preds = %63
  %90 = load i16, i16* %12, align 2
  %91 = zext i16 %90 to i32
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %93 = load i32, i32* %15, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp sle i32 %91, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %156, %100
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = add i32 %102, %103
  %105 = lshr i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load i16, i16* %12, align 2
  %107 = zext i16 %106 to i32
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %109 = load i32, i32* %16, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = icmp eq i32 %107, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %101
  br label %157

117:                                              ; preds = %101
  %118 = load i16, i16* %12, align 2
  %119 = zext i16 %118 to i32
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %121 = load i32, i32* %16, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i16, i16* %124, align 2
  %126 = zext i16 %125 to i32
  %127 = icmp slt i32 %119, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %117
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %171

133:                                              ; preds = %128
  %134 = load i32, i32* %16, align 4
  store i32 %134, i32* %15, align 4
  br label %156

135:                                              ; preds = %117
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %16, align 4
  store i32 %140, i32* %14, align 4
  br label %155

141:                                              ; preds = %135
  %142 = load i32, i32* %15, align 4
  store i32 %142, i32* %16, align 4
  %143 = load i16, i16* %12, align 2
  %144 = zext i16 %143 to i32
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %146 = load i32, i32* %16, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i16, i16* %149, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp eq i32 %144, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %157

154:                                              ; preds = %141
  br label %171

155:                                              ; preds = %139
  br label %156

156:                                              ; preds = %155, %133
  br label %101

157:                                              ; preds = %153, %116
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %159 = load i32, i32* %16, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i16, i16* %162, align 2
  store i16 %163, i16* %12, align 2
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  store i16 0, i16* %165, align 2
  %166 = load i16, i16* %12, align 2
  %167 = zext i16 %166 to i64
  %168 = load i64*, i64** %7, align 8
  store i64 %167, i64* %168, align 8
  store i32 1, i32* %5, align 4
  br label %210

169:                                              ; preds = %89, %63
  br label %170

170:                                              ; preds = %169, %49, %45
  br label %171

171:                                              ; preds = %170, %154, %132
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i16 0, i16* %173, align 2
  %174 = load i16, i16* %12, align 2
  %175 = zext i16 %174 to i64
  %176 = load i64*, i64** %7, align 8
  store i64 %175, i64* %176, align 8
  store i32 0, i32* %5, align 4
  br label %210

177:                                              ; preds = %39
  %178 = load i16, i16* %11, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp sge i32 %179, 65
  br i1 %180, label %181, label %206

181:                                              ; preds = %177
  %182 = load i16, i16* %11, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp sle i32 %183, 432
  br i1 %184, label %185, label %206

185:                                              ; preds = %181
  %186 = load i16*, i16** @cp1258_comp_bases, align 8
  %187 = load i16, i16* %11, align 2
  %188 = zext i16 %187 to i32
  %189 = sub nsw i32 %188, 64
  %190 = ashr i32 %189, 5
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i16, i16* %186, i64 %191
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i32
  %195 = load i16, i16* %11, align 2
  %196 = zext i16 %195 to i32
  %197 = and i32 %196, 31
  %198 = ashr i32 %194, %197
  %199 = and i32 %198, 1
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %185
  %202 = load i16, i16* %11, align 2
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i16 %202, i16* %204, align 2
  %205 = call i32 @RET_TOOFEW(i32 1)
  store i32 %205, i32* %5, align 4
  br label %210

206:                                              ; preds = %185, %181, %177
  %207 = load i16, i16* %11, align 2
  %208 = zext i16 %207 to i64
  %209 = load i64*, i64** %7, align 8
  store i64 %208, i64* %209, align 8
  store i32 1, i32* %5, align 4
  br label %210

210:                                              ; preds = %206, %201, %171, %157, %36
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i32 @RET_TOOFEW(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
