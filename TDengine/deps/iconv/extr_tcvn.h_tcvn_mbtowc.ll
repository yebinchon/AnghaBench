; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_tcvn.h_tcvn_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_tcvn.h_tcvn_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i16, i16 }
%struct.TYPE_5__ = type { i16 }

@tcvn_2uni_1 = common dso_local global i16* null, align 8
@tcvn_2uni_2 = common dso_local global i16* null, align 8
@viet_comp_table = common dso_local global %struct.TYPE_7__* null, align 8
@viet_comp_table_data = common dso_local global %struct.TYPE_6__* null, align 8
@tcvn_comp_bases = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i8*, i32)* @tcvn_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcvn_mbtowc(%struct.TYPE_5__* %0, i64* %1, i8* %2, i32 %3) #0 {
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
  %21 = icmp slt i32 %20, 24
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i16*, i16** @tcvn_2uni_1, align 8
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %11, align 2
  br label %44

28:                                               ; preds = %4
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i8, i8* %10, align 1
  %34 = zext i8 %33 to i16
  store i16 %34, i16* %11, align 2
  br label %43

35:                                               ; preds = %28
  %36 = load i16*, i16** @tcvn_2uni_2, align 8
  %37 = load i8, i8* %10, align 1
  %38 = zext i8 %37 to i32
  %39 = sub nsw i32 %38, 128
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %11, align 2
  br label %43

43:                                               ; preds = %35, %32
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i16, i16* %46, align 2
  store i16 %47, i16* %12, align 2
  %48 = load i16, i16* %12, align 2
  %49 = icmp ne i16 %48, 0
  br i1 %49, label %50, label %182

50:                                               ; preds = %44
  %51 = load i16, i16* %11, align 2
  %52 = zext i16 %51 to i32
  %53 = icmp sge i32 %52, 768
  br i1 %53, label %54, label %175

54:                                               ; preds = %50
  %55 = load i16, i16* %11, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp slt i32 %56, 832
  br i1 %57, label %58, label %175

58:                                               ; preds = %54
  %59 = load i16, i16* %11, align 2
  %60 = zext i16 %59 to i32
  switch i32 %60, label %66 [
    i32 768, label %61
    i32 769, label %62
    i32 771, label %63
    i32 777, label %64
    i32 803, label %65
  ]

61:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  br label %68

62:                                               ; preds = %58
  store i32 1, i32* %13, align 4
  br label %68

63:                                               ; preds = %58
  store i32 2, i32* %13, align 4
  br label %68

64:                                               ; preds = %58
  store i32 3, i32* %13, align 4
  br label %68

65:                                               ; preds = %58
  store i32 4, i32* %13, align 4
  br label %68

66:                                               ; preds = %58
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %65, %64, %63, %62, %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** @viet_comp_table, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @viet_comp_table, align 8
  %77 = load i32, i32* %13, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add i32 %75, %81
  %83 = sub i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i16, i16* %12, align 2
  %85 = zext i16 %84 to i32
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp sge i32 %85, %92
  br i1 %93, label %94, label %174

94:                                               ; preds = %68
  %95 = load i16, i16* %12, align 2
  %96 = zext i16 %95 to i32
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp sle i32 %96, %103
  br i1 %104, label %105, label %174

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %161, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = add i32 %107, %108
  %110 = lshr i32 %109, 1
  store i32 %110, i32* %16, align 4
  %111 = load i16, i16* %12, align 2
  %112 = zext i16 %111 to i32
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i16, i16* %117, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp eq i32 %112, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %106
  br label %162

122:                                              ; preds = %106
  %123 = load i16, i16* %12, align 2
  %124 = zext i16 %123 to i32
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %126 = load i32, i32* %16, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = icmp slt i32 %124, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %176

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %15, align 4
  br label %161

140:                                              ; preds = %122
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %14, align 4
  br label %160

146:                                              ; preds = %140
  %147 = load i32, i32* %15, align 4
  store i32 %147, i32* %16, align 4
  %148 = load i16, i16* %12, align 2
  %149 = zext i16 %148 to i32
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %151 = load i32, i32* %16, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i16, i16* %154, align 2
  %156 = zext i16 %155 to i32
  %157 = icmp eq i32 %149, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %146
  br label %162

159:                                              ; preds = %146
  br label %176

160:                                              ; preds = %144
  br label %161

161:                                              ; preds = %160, %138
  br label %106

162:                                              ; preds = %158, %121
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** @viet_comp_table_data, align 8
  %164 = load i32, i32* %16, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i16, i16* %167, align 2
  store i16 %168, i16* %12, align 2
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i16 0, i16* %170, align 2
  %171 = load i16, i16* %12, align 2
  %172 = zext i16 %171 to i64
  %173 = load i64*, i64** %7, align 8
  store i64 %172, i64* %173, align 8
  store i32 1, i32* %5, align 4
  br label %215

174:                                              ; preds = %94, %68
  br label %175

175:                                              ; preds = %174, %54, %50
  br label %176

176:                                              ; preds = %175, %159, %137
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  store i16 0, i16* %178, align 2
  %179 = load i16, i16* %12, align 2
  %180 = zext i16 %179 to i64
  %181 = load i64*, i64** %7, align 8
  store i64 %180, i64* %181, align 8
  store i32 0, i32* %5, align 4
  br label %215

182:                                              ; preds = %44
  %183 = load i16, i16* %11, align 2
  %184 = zext i16 %183 to i32
  %185 = icmp sge i32 %184, 65
  br i1 %185, label %186, label %211

186:                                              ; preds = %182
  %187 = load i16, i16* %11, align 2
  %188 = zext i16 %187 to i32
  %189 = icmp sle i32 %188, 432
  br i1 %189, label %190, label %211

190:                                              ; preds = %186
  %191 = load i16*, i16** @tcvn_comp_bases, align 8
  %192 = load i16, i16* %11, align 2
  %193 = zext i16 %192 to i32
  %194 = sub nsw i32 %193, 64
  %195 = ashr i32 %194, 5
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i16, i16* %191, i64 %196
  %198 = load i16, i16* %197, align 2
  %199 = zext i16 %198 to i32
  %200 = load i16, i16* %11, align 2
  %201 = zext i16 %200 to i32
  %202 = and i32 %201, 31
  %203 = ashr i32 %199, %202
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %190
  %207 = load i16, i16* %11, align 2
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  store i16 %207, i16* %209, align 2
  %210 = call i32 @RET_TOOFEW(i32 1)
  store i32 %210, i32* %5, align 4
  br label %215

211:                                              ; preds = %190, %186, %182
  %212 = load i16, i16* %11, align 2
  %213 = zext i16 %212 to i64
  %214 = load i64*, i64** %7, align 8
  store i64 %213, i64* %214, align 8
  store i32 1, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %206, %176, %162
  %216 = load i32, i32* %5, align 4
  ret i32 %216
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
