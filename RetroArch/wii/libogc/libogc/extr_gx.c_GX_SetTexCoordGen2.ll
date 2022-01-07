; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTexCoordGen2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetTexCoordGen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32 }

@GX_MAXCOORD = common dso_local global i32 0, align 4
@GX_TG_MTX3x4 = common dso_local global i32 0, align 4
@GX_TG_MTX2x4 = common dso_local global i32 0, align 4
@GX_TG_BUMP0 = common dso_local global i32 0, align 4
@GX_TG_BUMP7 = common dso_local global i32 0, align 4
@GX_TG_TEXCOORD0 = common dso_local global i64 0, align 8
@GX_TG_SRTG = common dso_local global i32 0, align 4
@GX_DTTMTX0 = common dso_local global i64 0, align 8
@__gx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetTexCoordGen2(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GX_MAXCOORD, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %231

21:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %37 [
    i32 137, label %23
    i32 138, label %24
    i32 141, label %25
    i32 136, label %26
    i32 140, label %27
    i32 139, label %28
    i32 135, label %29
    i32 134, label %30
    i32 133, label %31
    i32 132, label %32
    i32 131, label %33
    i32 130, label %34
    i32 129, label %35
    i32 128, label %36
  ]

23:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %38

24:                                               ; preds = %21
  store i32 1, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %38

25:                                               ; preds = %21
  store i32 3, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %38

26:                                               ; preds = %21
  store i32 4, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %38

27:                                               ; preds = %21
  store i32 2, i32* %15, align 4
  br label %38

28:                                               ; preds = %21
  store i32 2, i32* %15, align 4
  br label %38

29:                                               ; preds = %21
  store i32 5, i32* %15, align 4
  br label %38

30:                                               ; preds = %21
  store i32 6, i32* %15, align 4
  br label %38

31:                                               ; preds = %21
  store i32 7, i32* %15, align 4
  br label %38

32:                                               ; preds = %21
  store i32 8, i32* %15, align 4
  br label %38

33:                                               ; preds = %21
  store i32 9, i32* %15, align 4
  br label %38

34:                                               ; preds = %21
  store i32 10, i32* %15, align 4
  br label %38

35:                                               ; preds = %21
  store i32 11, i32* %15, align 4
  br label %38

36:                                               ; preds = %21
  store i32 12, i32* %15, align 4
  br label %38

37:                                               ; preds = %21
  store i32 5, i32* %15, align 4
  br label %38

38:                                               ; preds = %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23
  store i32 0, i32* %14, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 7
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @GX_TG_MTX3x4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @GX_TG_MTX2x4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @GX_TG_MTX3x4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 2, i32* %14, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @_SHIFTL(i32 %54, i32 2, i32 1)
  %56 = load i32, i32* %14, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @_SHIFTL(i32 %58, i32 7, i32 5)
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %118

62:                                               ; preds = %44
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @GX_TG_BUMP0, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @GX_TG_BUMP7, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %66
  %71 = load i64, i64* @GX_TG_TEXCOORD0, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* @GX_TG_BUMP0, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  store i32 16, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @_SHIFTL(i32 %79, i32 2, i32 1)
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @_SHIFTL(i32 %83, i32 7, i32 5)
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @_SHIFTL(i32 %87, i32 12, i32 3)
  %89 = load i32, i32* %14, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @_SHIFTL(i32 %91, i32 15, i32 3)
  %93 = load i32, i32* %14, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %14, align 4
  br label %117

95:                                               ; preds = %66, %62
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @GX_TG_SRTG, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 140
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 32, i32* %14, align 4
  br label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = icmp eq i32 %104, 139
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 48, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @_SHIFTL(i32 %109, i32 2, i32 1)
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = call i32 @_SHIFTL(i32 2, i32 7, i32 5)
  %114 = load i32, i32* %14, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %108, %95
  br label %117

117:                                              ; preds = %116, %70
  br label %118

118:                                              ; preds = %117, %53
  %119 = load i64, i64* @GX_DTTMTX0, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = sub nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @_SHIFTL(i32 %131, i32 8, i32 1)
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, 63
  %135 = or i32 %132, %134
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %135, i32* %141, align 4
  %142 = load i32, i32* %7, align 4
  switch i32 %142, label %223 [
    i32 149, label %143
    i32 148, label %153
    i32 147, label %163
    i32 146, label %173
    i32 145, label %183
    i32 144, label %193
    i32 143, label %203
    i32 142, label %213
  ]

143:                                              ; preds = %118
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = and i32 %146, -4033
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @_SHIFTL(i32 %148, i32 6, i32 6)
  %150 = or i32 %147, %149
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %223

153:                                              ; preds = %118
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, -258049
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @_SHIFTL(i32 %158, i32 12, i32 6)
  %160 = or i32 %157, %159
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %223

163:                                              ; preds = %118
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, -16515073
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @_SHIFTL(i32 %168, i32 18, i32 6)
  %170 = or i32 %167, %169
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  br label %223

173:                                              ; preds = %118
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, -1056964609
  %178 = load i32, i32* %10, align 4
  %179 = call i32 @_SHIFTL(i32 %178, i32 24, i32 6)
  %180 = or i32 %177, %179
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %223

183:                                              ; preds = %118
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, -64
  %188 = load i32, i32* %10, align 4
  %189 = and i32 %188, 63
  %190 = or i32 %187, %189
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  br label %223

193:                                              ; preds = %118
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, -4033
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @_SHIFTL(i32 %198, i32 6, i32 6)
  %200 = or i32 %197, %199
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  br label %223

203:                                              ; preds = %118
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, -258049
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @_SHIFTL(i32 %208, i32 12, i32 6)
  %210 = or i32 %207, %209
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  br label %223

213:                                              ; preds = %118
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, -16515073
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @_SHIFTL(i32 %218, i32 18, i32 6)
  %220 = or i32 %217, %219
  %221 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %118, %213, %203, %193, %183, %173, %163, %153, %143
  %224 = load i32, i32* %7, align 4
  %225 = shl i32 65536, %224
  %226 = or i32 67108864, %225
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 8
  br label %231

231:                                              ; preds = %223, %20
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
