; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_id3v2enc.c_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ff_id3v2_34_metadata_conv = common dso_local global i32 0, align 4
@ff_id3v2_4_metadata_conv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AV_DICT_IGNORE_SUFFIX = common dso_local global i32 0, align 4
@ff_id3v2_tags = common dso_local global i32 0, align 4
@ff_id3v2_3_tags = common dso_local global i32 0, align 4
@ff_id3v2_4_tags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_10__*, i32)* @write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_metadata(i32* %0, i32** %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %12 = load i32**, i32*** %7, align 8
  %13 = load i32, i32* @ff_id3v2_34_metadata_conv, align 4
  %14 = call i32 @ff_metadata_conv(i32** %12, i32 %13, i32* null)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32**, i32*** %7, align 8
  %21 = call i32 @id3v2_3_metadata_split_date(i32** %20)
  br label %32

22:                                               ; preds = %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32, i32* @ff_id3v2_4_metadata_conv, align 4
  %30 = call i32 @ff_metadata_conv(i32** %28, i32 %29, i32* null)
  br label %31

31:                                               ; preds = %27, %22
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %115, %88, %71, %48, %32
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = load i32, i32* @AV_DICT_IGNORE_SUFFIX, align 4
  %38 = call %struct.TYPE_11__* @av_dict_get(i32* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %36, i32 %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %10, align 8
  %39 = icmp ne %struct.TYPE_11__* %38, null
  br i1 %39, label %40, label %121

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = load i32, i32* @ff_id3v2_tags, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @id3v2_check_write_tag(%struct.TYPE_10__* %41, i32* %42, %struct.TYPE_11__* %43, i32 %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %33

54:                                               ; preds = %40
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @ff_id3v2_3_tags, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @ff_id3v2_4_tags, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @id3v2_check_write_tag(%struct.TYPE_10__* %55, i32* %56, %struct.TYPE_11__* %57, i32 %67, i32 %68)
  store i32 %69, i32* %11, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %33

77:                                               ; preds = %66
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @id3v2_put_priv(%struct.TYPE_10__* %78, i32* %79, i32 %82, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %77
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %33

94:                                               ; preds = %77
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %5, align 4
  br label %122

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @MKBETAG(i8 signext 84, i8 signext 88, i8 signext 88, i8 signext 88)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @id3v2_put_ttag(%struct.TYPE_10__* %101, i32* %102, i32 %105, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %5, align 4
  br label %122

115:                                              ; preds = %100
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %33

121:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %113, %97
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @ff_metadata_conv(i32**, i32, i32*) #1

declare dso_local i32 @id3v2_3_metadata_split_date(i32**) #1

declare dso_local %struct.TYPE_11__* @av_dict_get(i32*, i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @id3v2_check_write_tag(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @id3v2_put_priv(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @id3v2_put_ttag(%struct.TYPE_10__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @MKBETAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
