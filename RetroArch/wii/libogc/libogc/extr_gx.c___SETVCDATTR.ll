; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___SETVCDATTR.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___SETVCDATTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__SETVCDATTR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__SETVCDATTR(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %230 [
    i32 144, label %6
    i32 142, label %16
    i32 140, label %26
    i32 138, label %36
    i32 136, label %46
    i32 134, label %56
    i32 132, label %66
    i32 130, label %76
    i32 128, label %86
    i32 145, label %96
    i32 146, label %106
    i32 147, label %118
    i32 149, label %130
    i32 148, label %140
    i32 143, label %150
    i32 141, label %160
    i32 139, label %170
    i32 137, label %180
    i32 135, label %190
    i32 133, label %200
    i32 131, label %210
    i32 129, label %220
  ]

6:                                                ; preds = %2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -2
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = or i32 %10, %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %230

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -3
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @_SHIFTL(i32 %21, i32 1, i32 1)
  %23 = or i32 %20, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %230

26:                                               ; preds = %2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, -5
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @_SHIFTL(i32 %31, i32 2, i32 1)
  %33 = or i32 %30, %32
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %230

36:                                               ; preds = %2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -9
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @_SHIFTL(i32 %41, i32 3, i32 1)
  %43 = or i32 %40, %42
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %230

46:                                               ; preds = %2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -17
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @_SHIFTL(i32 %51, i32 4, i32 1)
  %53 = or i32 %50, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %230

56:                                               ; preds = %2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, -33
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @_SHIFTL(i32 %61, i32 5, i32 1)
  %63 = or i32 %60, %62
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %230

66:                                               ; preds = %2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -65
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @_SHIFTL(i32 %71, i32 6, i32 1)
  %73 = or i32 %70, %72
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %230

76:                                               ; preds = %2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, -129
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @_SHIFTL(i32 %81, i32 7, i32 1)
  %83 = or i32 %80, %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %230

86:                                               ; preds = %2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, -257
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @_SHIFTL(i32 %91, i32 8, i32 1)
  %93 = or i32 %90, %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %230

96:                                               ; preds = %2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, -1537
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @_SHIFTL(i32 %101, i32 9, i32 2)
  %103 = or i32 %100, %102
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %230

106:                                              ; preds = %2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, -6145
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @_SHIFTL(i32 %111, i32 11, i32 2)
  %113 = or i32 %110, %112
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %230

118:                                              ; preds = %2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, -6145
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @_SHIFTL(i32 %123, i32 11, i32 2)
  %125 = or i32 %122, %124
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 2, i32* %129, align 4
  br label %230

130:                                              ; preds = %2
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, -24577
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @_SHIFTL(i32 %135, i32 13, i32 2)
  %137 = or i32 %134, %136
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %230

140:                                              ; preds = %2
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, -98305
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @_SHIFTL(i32 %145, i32 15, i32 2)
  %147 = or i32 %144, %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  br label %230

150:                                              ; preds = %2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, -4
  %155 = load i32, i32* %4, align 4
  %156 = and i32 %155, 3
  %157 = or i32 %154, %156
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 4
  br label %230

160:                                              ; preds = %2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, -13
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @_SHIFTL(i32 %165, i32 2, i32 2)
  %167 = or i32 %164, %166
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  br label %230

170:                                              ; preds = %2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, -49
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @_SHIFTL(i32 %175, i32 4, i32 2)
  %177 = or i32 %174, %176
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  br label %230

180:                                              ; preds = %2
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, -193
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @_SHIFTL(i32 %185, i32 6, i32 2)
  %187 = or i32 %184, %186
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  br label %230

190:                                              ; preds = %2
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, -769
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @_SHIFTL(i32 %195, i32 8, i32 2)
  %197 = or i32 %194, %196
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  store i32 %197, i32* %199, align 4
  br label %230

200:                                              ; preds = %2
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, -3073
  %205 = load i32, i32* %4, align 4
  %206 = call i32 @_SHIFTL(i32 %205, i32 10, i32 2)
  %207 = or i32 %204, %206
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  store i32 %207, i32* %209, align 4
  br label %230

210:                                              ; preds = %2
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, -12289
  %215 = load i32, i32* %4, align 4
  %216 = call i32 @_SHIFTL(i32 %215, i32 12, i32 2)
  %217 = or i32 %214, %216
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  br label %230

220:                                              ; preds = %2
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, -49153
  %225 = load i32, i32* %4, align 4
  %226 = call i32 @_SHIFTL(i32 %225, i32 14, i32 2)
  %227 = or i32 %224, %226
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  br label %230

230:                                              ; preds = %2, %220, %210, %200, %190, %180, %170, %160, %150, %140, %130, %118, %106, %96, %86, %76, %66, %56, %46, %36, %26, %16, %6
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
