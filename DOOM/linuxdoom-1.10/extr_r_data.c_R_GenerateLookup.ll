; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_GenerateLookup.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_data.c_R_GenerateLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i16, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@textures = common dso_local global %struct.TYPE_6__** null, align 8
@texturecomposite = common dso_local global i64* null, align 8
@texturecompositesize = common dso_local global i32* null, align 8
@texturecolumnlump = common dso_local global i16** null, align 8
@texturecolumnofs = common dso_local global i16** null, align 8
@PU_CACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"R_GenerateLookup: column without a patch (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"R_GenerateLookup: texture %i is >64k\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_GenerateLookup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %13 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @textures, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %13, i64 %15
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %3, align 8
  %18 = load i64*, i64** @texturecomposite, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i32*, i32** @texturecompositesize, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 0, i32* %25, align 4
  %26 = load i16**, i16*** @texturecolumnlump, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16*, i16** %26, i64 %28
  %30 = load i16*, i16** %29, align 8
  store i16* %30, i16** %11, align 8
  %31 = load i16**, i16*** @texturecolumnofs, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16*, i16** %31, i64 %33
  %35 = load i16*, i16** %34, align 8
  store i16* %35, i16** %12, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @alloca(i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memset(i32* %41, i32 0, i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %10, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %5, align 8
  br label %52

52:                                               ; preds = %127, %1
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i16, i16* %60, align 4
  %62 = load i32, i32* @PU_CACHE, align 4
  %63 = call %struct.TYPE_8__* @W_CacheLumpNum(i16 signext %61, i32 %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @SHORT(i32 %70)
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %78

76:                                               ; preds = %58
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %84, %78
  br label %89

89:                                               ; preds = %123, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %126

93:                                               ; preds = %89
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i16, i16* %101, align 4
  %103 = load i16*, i16** %11, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %103, i64 %105
  store i16 %102, i16* %106, align 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %109, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @LONG(i32 %115)
  %117 = add nsw i32 %116, 3
  %118 = trunc i32 %117 to i16
  %119 = load i16*, i16** %12, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, i16* %119, i64 %121
  store i16 %118, i16* %122, align 2
  br label %123

123:                                              ; preds = %93
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %89

126:                                              ; preds = %89
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 1
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %5, align 8
  br label %52

132:                                              ; preds = %52
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %197, %132
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %200

139:                                              ; preds = %133
  %140 = load i32*, i32** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %139
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %149)
  br label %200

151:                                              ; preds = %139
  %152 = load i32*, i32** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 1
  br i1 %157, label %158, label %196

158:                                              ; preds = %151
  %159 = load i16*, i16** %11, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i16, i16* %159, i64 %161
  store i16 -1, i16* %162, align 2
  %163 = load i32*, i32** @texturecompositesize, align 8
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = trunc i32 %167 to i16
  %169 = load i16*, i16** %12, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i16, i16* %169, i64 %171
  store i16 %168, i16* %172, align 2
  %173 = load i32*, i32** @texturecompositesize, align 8
  %174 = load i32, i32* %2, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 65536, %180
  %182 = icmp sgt i32 %177, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %158
  %184 = load i32, i32* %2, align 4
  %185 = call i32 @I_Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %183, %158
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load i32*, i32** @texturecompositesize, align 8
  %191 = load i32, i32* %2, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %189
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %186, %151
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %133

200:                                              ; preds = %146, %133
  ret void
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @W_CacheLumpNum(i16 signext, i32) #1

declare dso_local i32 @SHORT(i32) #1

declare dso_local i32 @LONG(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @I_Error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
