; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_update_movie.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_emu.c_update_movie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@Pico = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@movie_size = common dso_local global i32 0, align 4
@movie_data = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"END OF MOVIE.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"END OF MOVIE.\0A\00", align 1
@PicoPad = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_movie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_movie() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico, i32 0, i32 0, i32 0), align 4
  %3 = mul nsw i32 %2, 3
  %4 = add nsw i32 %3, 64
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = add nsw i32 %5, 3
  %7 = load i32, i32* @movie_size, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32*, i32** @movie_data, align 8
  %11 = call i32 @free(i32* %10)
  store i32* null, i32** @movie_data, align 8
  %12 = call i32 @emu_status_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @lprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %197

14:                                               ; preds = %0
  %15 = load i32*, i32** @movie_data, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 143
  %22 = load i32*, i32** @PicoPad, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i32*, i32** @movie_data, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 16
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %14
  %32 = load i32*, i32** @PicoPad, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 64
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %14
  %37 = load i32*, i32** @movie_data, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %36
  %45 = load i32*, i32** @PicoPad, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 16
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %36
  %50 = load i32*, i32** @movie_data, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** @PicoPad, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 32
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %49
  %63 = load i32*, i32** @movie_data, align 8
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %69, 143
  %71 = load i32*, i32** @PicoPad, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** @movie_data, align 8
  %74 = load i32, i32* %1, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 16
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %62
  %82 = load i32*, i32** @PicoPad, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 64
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %62
  %87 = load i32*, i32** @movie_data, align 8
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %86
  %96 = load i32*, i32** @PicoPad, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, 16
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %86
  %101 = load i32*, i32** @movie_data, align 8
  %102 = load i32, i32* %1, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 64
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = load i32*, i32** @PicoPad, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, 32
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %109, %100
  %115 = load i32*, i32** @movie_data, align 8
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %121, 10
  %123 = shl i32 %122, 8
  %124 = load i32*, i32** @PicoPad, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load i32*, i32** @movie_data, align 8
  %129 = load i32, i32* %1, align 4
  %130 = add nsw i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %114
  %137 = load i32*, i32** @PicoPad, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, 1024
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %136, %114
  %142 = load i32*, i32** @movie_data, align 8
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %141
  %151 = load i32*, i32** @PicoPad, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, 256
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %150, %141
  %156 = load i32*, i32** @movie_data, align 8
  %157 = load i32, i32* %1, align 4
  %158 = add nsw i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %162, 160
  %164 = shl i32 %163, 4
  %165 = load i32*, i32** @PicoPad, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load i32*, i32** @movie_data, align 8
  %170 = load i32, i32* %1, align 4
  %171 = add nsw i32 %170, 2
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 16
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %155
  %178 = load i32*, i32** @PicoPad, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, 1024
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177, %155
  %183 = load i32*, i32** @movie_data, align 8
  %184 = load i32, i32* %1, align 4
  %185 = add nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 64
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %182
  %192 = load i32*, i32** @PicoPad, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, 256
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %191, %182
  br label %197

197:                                              ; preds = %196, %9
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @emu_status_msg(i8*) #1

declare dso_local i32 @lprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
