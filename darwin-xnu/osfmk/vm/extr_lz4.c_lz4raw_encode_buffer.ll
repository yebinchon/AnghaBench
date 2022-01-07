; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_lz4.c_lz4raw_encode_buffer.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_lz4.c_lz4raw_encode_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@LZ4_COMPRESS_HASH_ENTRIES = common dso_local global i32 0, align 4
@__const.lz4raw_encode_buffer.HASH_FILL = private unnamed_addr constant %struct.TYPE_4__ { i32 -2147483648, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lz4raw_encode_buffer(i32* noalias %0, i64 %1, i32* noalias %2, i64 %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_4__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %11, align 8
  %22 = load i32, i32* @LZ4_COMPRESS_HASH_ENTRIES, align 4
  %23 = zext i32 %22 to i64
  %24 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.TYPE_4__* @__const.lz4raw_encode_buffer.HASH_FILL to i8*), i64 8, i1 false)
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %14, align 8
  store i64 2147479552, i64* %15, align 8
  br label %27

27:                                               ; preds = %113, %5
  %28 = load i64, i64* %10, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @LZ4_COMPRESS_HASH_ENTRIES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %16, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %39
  %41 = bitcast %struct.TYPE_4__* %40 to i8*
  %42 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 8, i1 false)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = bitcast %struct.TYPE_4__* %47 to i8*
  %49 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %53
  %55 = bitcast %struct.TYPE_4__* %54 to i8*
  %56 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 8, i1 false)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %58 = load i32, i32* %16, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %60
  %62 = bitcast %struct.TYPE_4__* %61 to i8*
  %63 = bitcast %struct.TYPE_4__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %63, i64 8, i1 false)
  br label %31

64:                                               ; preds = %31
  %65 = load i64, i64* %10, align 8
  %66 = icmp ugt i64 %65, 2147479552
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i64 [ 2147479552, %67 ], [ %69, %68 ]
  store i64 %71, i64* %17, align 8
  %72 = load i32*, i32** %14, align 8
  store i32* %72, i32** %18, align 8
  %73 = load i32*, i32** %13, align 8
  store i32* %73, i32** %19, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* %10, align 8
  %80 = icmp ult i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @lz4_encode_2gb(i32** %14, i64 %74, i32** %13, i32* %75, i64 %76, %struct.TYPE_4__* %77, i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  store i64 %88, i64* %20, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = ptrtoint i32* %89 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  store i64 %94, i64* %21, align 8
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %70
  %99 = load i64, i64* %21, align 8
  %100 = load i64, i64* %17, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i64 0, i64* %6, align 8
  br label %127

103:                                              ; preds = %98, %70
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %21, align 8
  %110 = sub i64 %108, %109
  %111 = icmp uge i64 %110, 65536
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i64 0, i64* %6, align 8
  br label %127

113:                                              ; preds = %107, %103
  %114 = load i64, i64* %21, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %20, align 8
  %118 = load i64, i64* %8, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %8, align 8
  br label %27

120:                                              ; preds = %27
  %121 = load i32*, i32** %14, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = ptrtoint i32* %121 to i64
  %124 = ptrtoint i32* %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 4
  store i64 %126, i64* %6, align 8
  br label %127

127:                                              ; preds = %120, %112, %102
  %128 = load i64, i64* %6, align 8
  ret i64 %128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lz4_encode_2gb(i32**, i64, i32**, i32*, i64, %struct.TYPE_4__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
