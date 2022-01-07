; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_gen_vlc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34.c_rv34_gen_vlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@MAX_VLC_SIZE = common dso_local global i32 0, align 4
@table_data = common dso_local global i32* null, align 8
@table_offs = common dso_local global i64* null, align 8
@INIT_VLC_USE_NEW_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_4__*, i32*, i32)* @rv34_gen_vlc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv34_gen_vlc(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [17 x i32], align 16
  %13 = alloca [17 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = bitcast [17 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 68, i1 false)
  %21 = load i32, i32* @MAX_VLC_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load i32, i32* @MAX_VLC_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i32, i32* @MAX_VLC_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %85, %5
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %88

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %84

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %30, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  br label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  br label %61

61:                                               ; preds = %59, %53
  %62 = phi i32 [ %58, %53 ], [ %60, %59 ]
  %63 = load i32, i32* %19, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %27, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @FFMAX(i32 %68, i32 %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %61, %35
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %31

88:                                               ; preds = %31
  %89 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %89, align 16
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %108, %88
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [17 x i32], [17 x i32]* %12, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %97, %101
  %103 = shl i32 %102, 1
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %90

111:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %30, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [17 x i32], [17 x i32]* %13, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %24, i64 %126
  store i32 %123, i32* %127, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %11, align 4
  br label %112

131:                                              ; preds = %112
  %132 = load i32*, i32** @table_data, align 8
  %133 = load i64*, i64** @table_offs, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  store i32* %138, i32** %140, align 8
  %141 = load i64*, i64** @table_offs, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i64*, i64** @table_offs, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %147, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = sub i64 %146, %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @FFMIN(i32 %156, i32 9)
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* @INIT_VLC_USE_NEW_STATIC, align 4
  %160 = call i32 @ff_init_vlc_sparse(%struct.TYPE_4__* %155, i32 %157, i32 %158, i32* %30, i32 1, i32 1, i32* %24, i32 2, i32 2, i32* %27, i32 2, i32 2, i32 %159)
  %161 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %161)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FFMAX(i32, i32) #3

declare dso_local i32 @ff_init_vlc_sparse(%struct.TYPE_4__*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #3

declare dso_local i32 @FFMIN(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
