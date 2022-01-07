; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_emitasm.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_gen.c_emitasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i16**, i8**, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__**)*, i32 (%struct.TYPE_21__*)*, i64* }
%struct.TYPE_21__ = type { i8**, %struct.TYPE_15__**, %struct.TYPE_18__ }
%struct.TYPE_15__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__**, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__** }

@IR = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@framesize = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32)* @emitasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emitasm(%struct.TYPE_21__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [10 x %struct.TYPE_21__*], align 16
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_21__* @reuse(%struct.TYPE_21__* %9, i32 %10)
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %3, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @getrule(%struct.TYPE_21__* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IR, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i16**, i16*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16*, i16** %18, i64 %20
  %22 = load i16*, i16** %21, align 8
  store i16* %22, i16** %6, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IR, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @assert(i8* %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IR, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %2
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %50, align 8
  %52 = load i64, i64* @RX, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %51, i64 %52
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %217

59:                                               ; preds = %42, %2
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IR, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = call i32 %68(%struct.TYPE_21__* %69)
  br label %216

71:                                               ; preds = %59
  %72 = load i8*, i8** %7, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 63
  br i1 %75, label %76, label %113

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @assert(i8* %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %86, align 8
  %88 = load i64, i64* @RX, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %87, i64 %88
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %94, i64 0
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %97, align 8
  %99 = load i64, i64* @RX, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %98, i64 %99
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %100, align 8
  %102 = icmp eq %struct.TYPE_15__* %90, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %76
  br label %104

104:                                              ; preds = %110, %103
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %7, align 8
  %107 = load i8, i8* %105, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 10
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %104

111:                                              ; preds = %104
  br label %112

112:                                              ; preds = %111, %76
  br label %113

113:                                              ; preds = %112, %71
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @IR, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 2
  %117 = load i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__**)*, i32 (%struct.TYPE_21__*, i32, %struct.TYPE_21__**)** %116, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds [10 x %struct.TYPE_21__*], [10 x %struct.TYPE_21__*]* %8, i64 0, i64 0
  %121 = call i32 %117(%struct.TYPE_21__* %118, i32 %119, %struct.TYPE_21__** %120)
  br label %122

122:                                              ; preds = %212, %113
  %123 = load i8*, i8** %7, align 8
  %124 = load i8, i8* %123, align 1
  %125 = icmp ne i8 %124, 0
  br i1 %125, label %126, label %215

126:                                              ; preds = %122
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 37
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = load i8, i8* %132, align 1
  %134 = call i32 @putchar(i8 signext %133)
  br label %211

135:                                              ; preds = %126
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 70
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* @framesize, align 4
  %143 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %210

144:                                              ; preds = %135
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sge i32 %147, 48
  br i1 %148, label %149, label %172

149:                                              ; preds = %144
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 57
  br i1 %153, label %154, label %172

154:                                              ; preds = %149
  %155 = load i8*, i8** %7, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, 48
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x %struct.TYPE_21__*], [10 x %struct.TYPE_21__*]* %8, i64 0, i64 %159
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %160, align 8
  %162 = load i16*, i16** %6, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = sub nsw i32 %165, 48
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i16, i16* %162, i64 %167
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = call i32 @emitasm(%struct.TYPE_21__* %161, i32 %170)
  br label %209

172:                                              ; preds = %149, %144
  %173 = load i8*, i8** %7, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp sge i32 %175, 97
  br i1 %176, label %177, label %204

177:                                              ; preds = %172
  %178 = load i8*, i8** %7, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %182, align 8
  %184 = call signext i8 @NELEMS(%struct.TYPE_15__** %183)
  %185 = sext i8 %184 to i32
  %186 = add nsw i32 97, %185
  %187 = icmp slt i32 %180, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %177
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %190, align 8
  %192 = load i8*, i8** %7, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = sub nsw i32 %194, 97
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %191, i64 %196
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @stdout, align 4
  %203 = call i32 @fputs(i32 %201, i32 %202)
  br label %208

204:                                              ; preds = %177, %172
  %205 = load i8*, i8** %7, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call i32 @putchar(i8 signext %206)
  br label %208

208:                                              ; preds = %204, %188
  br label %209

209:                                              ; preds = %208, %154
  br label %210

210:                                              ; preds = %209, %141
  br label %211

211:                                              ; preds = %210, %131
  br label %212

212:                                              ; preds = %211
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %7, align 8
  br label %122

215:                                              ; preds = %122
  br label %216

216:                                              ; preds = %215, %64
  br label %217

217:                                              ; preds = %216, %48
  ret i32 0
}

declare dso_local %struct.TYPE_21__* @reuse(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @getrule(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @print(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local signext i8 @NELEMS(%struct.TYPE_15__**) #1

declare dso_local i32 @fputs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
