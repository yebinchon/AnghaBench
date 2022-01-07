; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_unpack_comment.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_info.c__vorbis_unpack_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, i8**, i8* }
%struct.TYPE_10__ = type { i32 }

@OV_EBADHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @_vorbis_unpack_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vorbis_unpack_comment(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = call i32 @oggpack_read(%struct.TYPE_10__* %9, i32 32)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %128

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 8
  %20 = icmp sgt i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %128

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i8* @_ogg_calloc(i32 %24, i32 1)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_v_readstring(%struct.TYPE_10__* %28, i8* %31, i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = call i32 @oggpack_read(%struct.TYPE_10__* %34, i32 32)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %128

39:                                               ; preds = %22
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i32 @oggpack_bytes(%struct.TYPE_10__* %44)
  %46 = sub nsw i32 %43, %45
  %47 = ashr i32 %46, 2
  %48 = icmp sgt i32 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %128

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = call i8* @_ogg_calloc(i32 %57, i32 8)
  %59 = bitcast i8* %58 to i8**
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  store i8** %59, i8*** %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = call i8* @_ogg_calloc(i32 %65, i32 4)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %119, %50
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %122

76:                                               ; preds = %70
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = call i32 @oggpack_read(%struct.TYPE_10__* %77, i32 32)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %128

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = call i32 @oggpack_bytes(%struct.TYPE_10__* %87)
  %89 = sub nsw i32 %86, %88
  %90 = icmp sgt i32 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %128

92:                                               ; preds = %82
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = call i8* @_ogg_calloc(i32 %101, i32 1)
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 2
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @_v_readstring(%struct.TYPE_10__* %109, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %92
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %70

122:                                              ; preds = %70
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = call i32 @oggpack_read(%struct.TYPE_10__* %123, i32 1)
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %128

127:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %132

128:                                              ; preds = %126, %91, %81, %49, %38, %21, %13
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = call i32 @vorbis_comment_clear(%struct.TYPE_9__* %129)
  %131 = load i32, i32* @OV_EBADHEADER, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @oggpack_read(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @_ogg_calloc(i32, i32) #1

declare dso_local i32 @_v_readstring(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @oggpack_bytes(%struct.TYPE_10__*) #1

declare dso_local i32 @vorbis_comment_clear(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
