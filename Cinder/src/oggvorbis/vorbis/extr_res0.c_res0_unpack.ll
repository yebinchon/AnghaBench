; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res0_unpack.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_res0.c_res0_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @res0_unpack(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %17 = call %struct.TYPE_11__* @_ogg_calloc(i32 1, i32 48)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %9, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @oggpack_read(i32* %21, i32 24)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @oggpack_read(i32* %25, i32 24)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @oggpack_read(i32* %29, i32 24)
  %31 = add nsw i32 %30, 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @oggpack_read(i32* %34, i32 6)
  %36 = add nsw i32 %35, 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @oggpack_read(i32* %39, i32 8)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %2
  br label %213

48:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @oggpack_read(i32* %56, i32 3)
  store i32 %57, i32* %10, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @oggpack_read(i32* %58, i32 1)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %213

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @oggpack_read(i32* %67, i32 5)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %213

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = shl i32 %73, 3
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %72, %63
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @icount(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %77
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %49

94:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @oggpack_read(i32* %100, i32 8)
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %213

105:                                              ; preds = %99
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %105
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %95

116:                                              ; preds = %95
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  br label %213

125:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %162, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %165

130:                                              ; preds = %126
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 6
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %213

143:                                              ; preds = %130
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %145, align 8
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 6
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %146, i64 %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %213

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %6, align 4
  br label %126

165:                                              ; preds = %126
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %168, i64 %172
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %14, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %179, i64 %183
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %188 = load i32, i32* %15, align 4
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %165
  br label %213

191:                                              ; preds = %165
  br label %192

192:                                              ; preds = %205, %191
  %193 = load i32, i32* %15, align 4
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %208

195:                                              ; preds = %192
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %16, align 4
  %200 = mul nsw i32 %199, %198
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %213

205:                                              ; preds = %195
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %15, align 4
  br label %192

208:                                              ; preds = %192
  %209 = load i32, i32* %16, align 4
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %212, %struct.TYPE_11__** %3, align 8
  br label %216

213:                                              ; preds = %204, %190, %160, %142, %124, %104, %71, %62, %47
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %215 = call i32 @res0_free_info(%struct.TYPE_11__* %214)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %216

216:                                              ; preds = %213, %208
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %217
}

declare dso_local %struct.TYPE_11__* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @oggpack_read(i32*, i32) #1

declare dso_local i64 @icount(i32) #1

declare dso_local i32 @res0_free_info(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
