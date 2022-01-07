; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_build_def_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_h264_refs.c_build_def_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_4__**, i32, i32, i32)* @build_def_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_def_list(i32* %0, i32 %1, %struct.TYPE_4__** %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %196, %6
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %197

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %59, %28
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %46
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %42, %34
  %55 = phi i1 [ false, %34 ], [ %53, %42 ]
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %54, %29
  %58 = phi i1 [ false, %29 ], [ %56, %54 ]
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %29

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %95, %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = icmp ne %struct.TYPE_4__* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = xor i32 %86, 3
  %88 = and i32 %85, %87
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %77, %69
  %91 = phi i1 [ false, %69 ], [ %89, %77 ]
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %90, %64
  %94 = phi i1 [ false, %64 ], [ %92, %90 ]
  br i1 %94, label %95, label %99

95:                                               ; preds = %93
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %64

99:                                               ; preds = %93
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %99
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @av_assert0(i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  br label %124

115:                                              ; preds = %104
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %115, %112
  %125 = phi i32 [ %114, %112 ], [ %123, %115 ]
  %126 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %126, i64 %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %125, i32* %132, align 4
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %138, i64 %142
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @split_field_copy(i32* %137, %struct.TYPE_4__* %144, i32 %145, i32 1)
  br label %147

147:                                              ; preds = %124, %99
  %148 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %196

152:                                              ; preds = %147
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp slt i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @av_assert0(i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %152
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  br label %172

163:                                              ; preds = %152
  %164 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %164, i64 %167
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  br label %172

172:                                              ; preds = %163, %160
  %173 = phi i32 [ %162, %160 ], [ %171, %163 ]
  %174 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %174, i64 %177
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  store i32 %173, i32* %180, align 4
  %181 = load i32*, i32** %7, align 8
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %181, i64 %184
  %186 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %9, align 8
  %187 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %186, i64 %190
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = xor i32 %193, 3
  %195 = call i32 @split_field_copy(i32* %185, %struct.TYPE_4__* %192, i32 %194, i32 0)
  br label %196

196:                                              ; preds = %172, %147
  br label %16

197:                                              ; preds = %26
  %198 = load i32, i32* %14, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @av_assert0(i32) #2

declare dso_local i32 @split_field_copy(i32*, %struct.TYPE_4__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
