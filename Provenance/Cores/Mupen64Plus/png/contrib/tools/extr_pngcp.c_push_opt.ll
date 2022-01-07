; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_push_opt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_push_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.display = type { i32, i64, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@SL = common dso_local global i32 0, align 4
@options = common dso_local global %struct.TYPE_6__* null, align 8
@range_lo = common dso_local global i8* null, align 8
@MAX_SIZE = common dso_local global i32 0, align 4
@range_hi = common dso_local global i8* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@APP_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: only testing one value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i32, i64, i32)* @push_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_opt(%struct.display* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.display*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.display* %0, %struct.display** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.display*, %struct.display** %5, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SL, align 4
  %19 = icmp ult i32 %17, %18
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ false, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ugt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  br label %33

33:                                               ; preds = %49, %20
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** @range_lo, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33
  br label %52

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %9, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %33, label %52

52:                                               ; preds = %49, %47
  %53 = load i32, i32* %6, align 4
  %54 = add i32 %53, 1
  %55 = load %struct.display*, %struct.display** %5, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @MAX_SIZE, align 4
  %58 = load %struct.display*, %struct.display** %5, align 8
  %59 = getelementptr inbounds %struct.display, %struct.display* %58, i32 0, i32 3
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 6
  store i32 %57, i32* %64, align 8
  %65 = load %struct.display*, %struct.display** %5, align 8
  %66 = getelementptr inbounds %struct.display, %struct.display* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 7
  store i32 %57, i32* %71, align 4
  %72 = load %struct.display*, %struct.display** %5, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 3
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 8
  store i32 %57, i32* %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %144

81:                                               ; preds = %52
  %82 = load i8*, i8** %10, align 8
  %83 = load i8*, i8** @range_lo, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %144

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.display*, %struct.display** %5, align 8
  %96 = getelementptr inbounds %struct.display, %struct.display* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  store i32 %94, i32* %101, align 4
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %103, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %85
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %112 = load i64, i64* %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i8*, i8** @range_hi, align 8
  %122 = icmp eq i8* %120, %121
  br label %123

123:                                              ; preds = %110, %85
  %124 = phi i1 [ false, %85 ], [ %122, %110 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.display*, %struct.display** %5, align 8
  %138 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  store i32 %136, i32* %143, align 8
  br label %161

144:                                              ; preds = %81, %52
  %145 = load i32, i32* @INT_MAX, align 4
  %146 = load %struct.display*, %struct.display** %5, align 8
  %147 = getelementptr inbounds %struct.display, %struct.display* %146, i32 0, i32 3
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 5
  store i32 %145, i32* %152, align 4
  %153 = load i32, i32* @INT_MIN, align 4
  %154 = load %struct.display*, %struct.display** %5, align 8
  %155 = getelementptr inbounds %struct.display, %struct.display* %154, i32 0, i32 3
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i32, i32* %6, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 4
  store i32 %153, i32* %160, align 8
  br label %161

161:                                              ; preds = %144, %123
  %162 = load i64, i64* %7, align 8
  %163 = load %struct.display*, %struct.display** %5, align 8
  %164 = getelementptr inbounds %struct.display, %struct.display* %163, i32 0, i32 3
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i64 %162, i64* %169, align 8
  %170 = load i64, i64* %9, align 8
  %171 = load %struct.display*, %struct.display** %5, align 8
  %172 = getelementptr inbounds %struct.display, %struct.display* %171, i32 0, i32 3
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i64 %170, i64* %177, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %179 = load i64, i64* %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i64, i64* %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.display*, %struct.display** %5, align 8
  %188 = getelementptr inbounds %struct.display, %struct.display* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* %7, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load %struct.display*, %struct.display** %5, align 8
  %193 = getelementptr inbounds %struct.display, %struct.display* %192, i32 0, i32 3
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 3
  store i32 %186, i32* %198, align 4
  %199 = load %struct.display*, %struct.display** %5, align 8
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @set_opt_string(%struct.display* %199, i32 %200)
  %202 = load %struct.display*, %struct.display** %5, align 8
  %203 = load i64, i64* %7, align 8
  %204 = load i64, i64* %9, align 8
  %205 = call i64 @opt_list_end(%struct.display* %202, i64 %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %230

207:                                              ; preds = %161
  %208 = load %struct.display*, %struct.display** %5, align 8
  %209 = getelementptr inbounds %struct.display, %struct.display* %208, i32 0, i32 3
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 2
  store i32 1, i32* %214, align 8
  %215 = load i64, i64* %7, align 8
  %216 = load %struct.display*, %struct.display** %5, align 8
  %217 = getelementptr inbounds %struct.display, %struct.display* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %207
  %221 = load %struct.display*, %struct.display** %5, align 8
  %222 = load i32, i32* @APP_WARNING, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @display_log(%struct.display* %221, i32 %222, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %220, %207
  br label %243

230:                                              ; preds = %161
  %231 = load %struct.display*, %struct.display** %5, align 8
  %232 = getelementptr inbounds %struct.display, %struct.display* %231, i32 0, i32 3
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 2
  store i32 0, i32* %237, align 8
  %238 = load %struct.display*, %struct.display** %5, align 8
  %239 = getelementptr inbounds %struct.display, %struct.display* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.display*, %struct.display** %5, align 8
  %242 = getelementptr inbounds %struct.display, %struct.display* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %230, %229
  %244 = load %struct.display*, %struct.display** %5, align 8
  %245 = call i32 @text_stash(%struct.display* %244)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_opt_string(%struct.display*, i32) #1

declare dso_local i64 @opt_list_end(%struct.display*, i64, i64) #1

declare dso_local i32 @display_log(%struct.display*, i32, i8*, i32) #1

declare dso_local i32 @text_stash(%struct.display*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
