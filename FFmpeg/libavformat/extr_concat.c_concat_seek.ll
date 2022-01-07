; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concat.c_concat_seek.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concat.c_concat_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.concat_data* }
%struct.concat_data = type { i64, i64, i32, %struct.concat_nodes* }
%struct.concat_nodes = type { i64, i32 }

@AVSEEK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i64, i32)* @concat_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @concat_seek(%struct.TYPE_3__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.concat_data*, align 8
  %10 = alloca %struct.concat_nodes*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.concat_data*, %struct.concat_data** %13, align 8
  store %struct.concat_data* %14, %struct.concat_data** %9, align 8
  %15 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %16 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %15, i32 0, i32 3
  %17 = load %struct.concat_nodes*, %struct.concat_nodes** %16, align 8
  store %struct.concat_nodes* %17, %struct.concat_nodes** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @AVSEEK_SIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %24 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %4, align 8
  br label %151

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %118 [
    i32 129, label %28
    i32 130, label %60
    i32 128, label %87
  ]

28:                                               ; preds = %26
  %29 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %30 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %56, %28
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %39, i64 %40
  %42 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 0, %43
  %45 = icmp slt i64 %38, %44
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %59

48:                                               ; preds = %46
  %49 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %49, i64 %50
  %52 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %11, align 8
  br label %34

59:                                               ; preds = %46
  br label %121

60:                                               ; preds = %26
  store i64 0, i64* %11, align 8
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %64 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %68, i64 %69
  %71 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %6, align 8
  br label %75

75:                                               ; preds = %67
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %11, align 8
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %79, i64 %80
  %82 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @ffurl_seek(i32 %83, i64 0, i32 130)
  %85 = load i64, i64* %6, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %6, align 8
  store i32 128, i32* %7, align 4
  br label %87

87:                                               ; preds = %26, %78
  store i64 0, i64* %11, align 8
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %91 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %89, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load i64, i64* %6, align 8
  %98 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %98, i64 %99
  %101 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %97, %102
  br label %104

104:                                              ; preds = %96, %88
  %105 = phi i1 [ false, %88 ], [ %103, %96 ]
  br i1 %105, label %106, label %117

106:                                              ; preds = %104
  %107 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %108 = load i64, i64* %11, align 8
  %109 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %107, i64 %108
  %110 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = sub nsw i64 %112, %111
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %106
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %88

117:                                              ; preds = %104
  br label %121

118:                                              ; preds = %26
  %119 = load i32, i32* @EINVAL, align 4
  %120 = call i64 @AVERROR(i32 %119)
  store i64 %120, i64* %4, align 8
  br label %151

121:                                              ; preds = %117, %59
  %122 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %123 = load i64, i64* %11, align 8
  %124 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %122, i64 %123
  %125 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i64 @ffurl_seek(i32 %126, i64 %127, i32 %128)
  store i64 %129, i64* %8, align 8
  %130 = load i64, i64* %8, align 8
  %131 = icmp sge i64 %130, 0
  br i1 %131, label %132, label %149

132:                                              ; preds = %121
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.concat_data*, %struct.concat_data** %9, align 8
  %135 = getelementptr inbounds %struct.concat_data, %struct.concat_data* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %139, %132
  %137 = load i64, i64* %11, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load %struct.concat_nodes*, %struct.concat_nodes** %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = add i64 %141, -1
  store i64 %142, i64* %11, align 8
  %143 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %140, i64 %142
  %144 = getelementptr inbounds %struct.concat_nodes, %struct.concat_nodes* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %8, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %8, align 8
  br label %136

148:                                              ; preds = %136
  br label %149

149:                                              ; preds = %148, %121
  %150 = load i64, i64* %8, align 8
  store i64 %150, i64* %4, align 8
  br label %151

151:                                              ; preds = %149, %118, %22
  %152 = load i64, i64* %4, align 8
  ret i64 %152
}

declare dso_local i64 @ffurl_seek(i32, i64, i32) #1

declare dso_local i64 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
