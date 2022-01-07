; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_readQuadInfo.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_cin.c_readQuadInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }

@currentHandle = common dso_local global i64 0, align 8
@cinTable = common dso_local global %struct.TYPE_5__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@cin = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"HACK: approxmimating cinematic for Rage Pro or Voodoo\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @readQuadInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readQuadInfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i64, i64* @currentHandle, align 8
  %4 = icmp ult i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %232

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 256
  %14 = add nsw i32 %9, %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %16 = load i64, i64* @currentHandle, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 256
  %26 = add nsw i32 %21, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %28 = load i64, i64* @currentHandle, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 256
  %38 = add nsw i32 %33, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %40 = load i64, i64* @currentHandle, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 8
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 7
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 256
  %50 = add nsw i32 %45, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %52 = load i64, i64* @currentHandle, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %56 = load i64, i64* @currentHandle, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %61 = load i64, i64* @currentHandle, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 4
  store i32 %59, i32* %63, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %65 = load i64, i64* @currentHandle, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %70 = load i64, i64* @currentHandle, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  store i32 %68, i32* %72, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %74 = load i64, i64* @currentHandle, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %79 = load i64, i64* @currentHandle, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %85 = load i64, i64* @currentHandle, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 6
  store i32 %83, i32* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %89 = load i64, i64* @currentHandle, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %94 = load i64, i64* @currentHandle, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %92, %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %100 = load i64, i64* @currentHandle, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 8
  store i32 %98, i32* %102, align 8
  %103 = load i8*, i8** @qfalse, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %105 = load i64, i64* @currentHandle, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 17
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** @qfalse, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %110 = load i64, i64* @currentHandle, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 16
  store i8* %108, i8** %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %114 = load i64, i64* @currentHandle, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %119 = load i64, i64* @currentHandle, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 15
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %123 = load i64, i64* @currentHandle, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %128 = load i64, i64* @currentHandle, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 13
  store i32 %126, i32* %130, align 4
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %132 = trunc i64 %131 to i32
  %133 = sub i32 0, %132
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %135 = trunc i64 %134 to i32
  %136 = add i32 %133, %135
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %138 = load i64, i64* @currentHandle, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = add i32 %136, %141
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %144 = load i64, i64* @currentHandle, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 9
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %142, i32* %148, align 4
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %152 = load i64, i64* @currentHandle, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 8
  %156 = add i32 %150, %155
  %157 = sub i32 0, %156
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cin, i32 0, i32 0), align 8
  %159 = trunc i64 %158 to i32
  %160 = add i32 %157, %159
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %162 = load i64, i64* @currentHandle, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 9
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %160, i32* %166, align 4
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %168 = load i64, i64* @currentHandle, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %173 = load i64, i64* @currentHandle, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 10
  store i32 %171, i32* %175, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %177 = load i64, i64* @currentHandle, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %182 = load i64, i64* @currentHandle, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 11
  store i32 %180, i32* %184, align 4
  %185 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 8
  %186 = load i64, i64* @GLHW_RAGEPRO, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %6
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 1), align 8
  %190 = icmp sle i32 %189, 256
  br i1 %190, label %191, label %232

191:                                              ; preds = %188, %6
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %193 = load i64, i64* @currentHandle, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 10
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 256
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %200 = load i64, i64* @currentHandle, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 10
  store i32 256, i32* %202, align 8
  br label %203

203:                                              ; preds = %198, %191
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %205 = load i64, i64* @currentHandle, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 11
  %208 = load i32, i32* %207, align 4
  %209 = icmp sgt i32 %208, 256
  br i1 %209, label %210, label %215

210:                                              ; preds = %203
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %212 = load i64, i64* @currentHandle, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 11
  store i32 256, i32* %214, align 4
  br label %215

215:                                              ; preds = %210, %203
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %217 = load i64, i64* @currentHandle, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 256
  br i1 %221, label %229, label %222

222:                                              ; preds = %215
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cinTable, align 8
  %224 = load i64, i64* @currentHandle, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 256
  br i1 %228, label %229, label %231

229:                                              ; preds = %222, %215
  %230 = call i32 @Com_Printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %231

231:                                              ; preds = %229, %222
  br label %232

232:                                              ; preds = %5, %231, %188
  ret void
}

declare dso_local i32 @Com_Printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
