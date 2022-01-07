; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_less_than.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_less_than.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@formats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @less_than to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @less_than(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @formats, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i64 @FEATURES_UNPACK_COLOR(i32 %39)
  store i64 %40, i64* %15, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i64 @FEATURES_UNPACK_COLOR(i32 %41)
  store i64 %42, i64* %16, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i64 @FEATURES_UNPACK_MULTI(i32 %43)
  store i64 %44, i64* %17, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @FEATURES_UNPACK_MULTI(i32 %45)
  store i64 %46, i64* %18, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @FEATURES_UNPACK_DEPTH(i32 %47)
  store i64 %48, i64* %19, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @FEATURES_UNPACK_DEPTH(i32 %49)
  store i64 %50, i64* %20, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @FEATURES_UNPACK_STENCIL(i32 %51)
  store i64 %52, i64* %21, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @FEATURES_UNPACK_STENCIL(i32 %53)
  store i64 %54, i64* %22, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i64 @FEATURES_UNPACK_MASK(i32 %55)
  store i64 %56, i64* %23, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @FEATURES_UNPACK_MASK(i32 %57)
  store i64 %58, i64* %24, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %6
  %62 = load i32, i32* %13, align 4
  %63 = call i64 @FEATURES_UNPACK_RED(i32 %62)
  %64 = load i32, i32* %25, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %25, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i64 @FEATURES_UNPACK_RED(i32 %68)
  %70 = load i32, i32* %26, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %26, align 4
  br label %74

74:                                               ; preds = %61, %6
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* %13, align 4
  %79 = call i64 @FEATURES_UNPACK_GREEN(i32 %78)
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %25, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i64 @FEATURES_UNPACK_GREEN(i32 %84)
  %86 = load i32, i32* %26, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %26, align 4
  br label %90

90:                                               ; preds = %77, %74
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i32, i32* %13, align 4
  %95 = call i64 @FEATURES_UNPACK_BLUE(i32 %94)
  %96 = load i32, i32* %25, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %25, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i64 @FEATURES_UNPACK_BLUE(i32 %100)
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %26, align 4
  br label %106

106:                                              ; preds = %93, %90
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* %13, align 4
  %111 = call i64 @FEATURES_UNPACK_ALPHA(i32 %110)
  %112 = load i32, i32* %25, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i64 @FEATURES_UNPACK_ALPHA(i32 %116)
  %118 = load i32, i32* %26, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %26, align 4
  br label %122

122:                                              ; preds = %109, %106
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* %26, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %184, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %26, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %182

130:                                              ; preds = %126
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %16, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %180, label %134

134:                                              ; preds = %130
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %16, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %178

138:                                              ; preds = %134
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %18, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %176, label %142

142:                                              ; preds = %138
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %18, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %142
  %147 = load i64, i64* %19, align 8
  %148 = load i64, i64* %20, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %172, label %150

150:                                              ; preds = %146
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %20, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load i64, i64* %21, align 8
  %156 = load i64, i64* %22, align 8
  %157 = icmp slt i64 %155, %156
  br i1 %157, label %168, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %21, align 8
  %160 = load i64, i64* %22, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i64, i64* %23, align 8
  %164 = load i64, i64* %24, align 8
  %165 = icmp slt i64 %163, %164
  br label %166

166:                                              ; preds = %162, %158
  %167 = phi i1 [ false, %158 ], [ %165, %162 ]
  br label %168

168:                                              ; preds = %166, %154
  %169 = phi i1 [ true, %154 ], [ %167, %166 ]
  br label %170

170:                                              ; preds = %168, %150
  %171 = phi i1 [ false, %150 ], [ %169, %168 ]
  br label %172

172:                                              ; preds = %170, %146
  %173 = phi i1 [ true, %146 ], [ %171, %170 ]
  br label %174

174:                                              ; preds = %172, %142
  %175 = phi i1 [ false, %142 ], [ %173, %172 ]
  br label %176

176:                                              ; preds = %174, %138
  %177 = phi i1 [ true, %138 ], [ %175, %174 ]
  br label %178

178:                                              ; preds = %176, %134
  %179 = phi i1 [ false, %134 ], [ %177, %176 ]
  br label %180

180:                                              ; preds = %178, %130
  %181 = phi i1 [ true, %130 ], [ %179, %178 ]
  br label %182

182:                                              ; preds = %180, %126
  %183 = phi i1 [ false, %126 ], [ %181, %180 ]
  br label %184

184:                                              ; preds = %182, %122
  %185 = phi i1 [ true, %122 ], [ %183, %182 ]
  %186 = zext i1 %185 to i32
  ret i32 %186
}

declare dso_local i64 @FEATURES_UNPACK_COLOR(i32) #1

declare dso_local i64 @FEATURES_UNPACK_MULTI(i32) #1

declare dso_local i64 @FEATURES_UNPACK_DEPTH(i32) #1

declare dso_local i64 @FEATURES_UNPACK_STENCIL(i32) #1

declare dso_local i64 @FEATURES_UNPACK_MASK(i32) #1

declare dso_local i64 @FEATURES_UNPACK_RED(i32) #1

declare dso_local i64 @FEATURES_UNPACK_GREEN(i32) #1

declare dso_local i64 @FEATURES_UNPACK_BLUE(i32) #1

declare dso_local i64 @FEATURES_UNPACK_ALPHA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
