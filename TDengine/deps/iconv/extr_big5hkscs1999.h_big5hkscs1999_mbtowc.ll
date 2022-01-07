; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs1999.h_big5hkscs1999_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs1999.h_big5hkscs1999_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8 }

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i8*, i32)* @big5hkscs1999_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5hkscs1999_mbtowc(%struct.TYPE_6__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %10, align 1
  %21 = load i8, i8* %10, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i8 0, i8* %25, align 1
  %26 = load i8, i8* %10, align 1
  %27 = load i8*, i8** %7, align 8
  store i8 %26, i8* %27, align 1
  store i32 0, i32* %5, align 4
  br label %157

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  store i8 %30, i8* %11, align 1
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp slt i32 %32, 128
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @ascii_mbtowc(%struct.TYPE_6__* %35, i8* %36, i8* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %157

40:                                               ; preds = %28
  %41 = load i8, i8* %11, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp sge i32 %42, 161
  br i1 %43, label %44, label %97

44:                                               ; preds = %40
  %45 = load i8, i8* %11, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp slt i32 %46, 255
  br i1 %47, label %48, label %97

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @RET_TOOFEW(i32 0)
  store i32 %52, i32* %5, align 4
  br label %157

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %12, align 1
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp sge i32 %58, 64
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i8, i8* %12, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp slt i32 %62, 127
  br i1 %63, label %72, label %64

64:                                               ; preds = %60, %53
  %65 = load i8, i8* %12, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp sge i32 %66, 161
  br i1 %67, label %68, label %96

68:                                               ; preds = %64
  %69 = load i8, i8* %12, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %70, 255
  br i1 %71, label %72, label %96

72:                                               ; preds = %68, %60
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 198
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sge i32 %78, 161
  br i1 %79, label %95, label %80

80:                                               ; preds = %76, %72
  %81 = load i8, i8* %11, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 199
  br i1 %83, label %95, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @big5_mbtowc(%struct.TYPE_6__* %85, i8* %86, i8* %87, i32 2)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @RET_ILSEQ, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %157

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %80, %76
  br label %96

96:                                               ; preds = %95, %68, %64
  br label %97

97:                                               ; preds = %96, %44, %40
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @hkscs1999_mbtowc(%struct.TYPE_6__* %98, i8* %99, i8* %100, i32 %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @RET_ILSEQ, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %5, align 4
  br label %157

108:                                              ; preds = %97
  %109 = load i8, i8* %11, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 136
  br i1 %111, label %112, label %155

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = call i32 @RET_TOOFEW(i32 0)
  store i32 %116, i32* %5, align 4
  br label %157

117:                                              ; preds = %112
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %15, align 1
  %121 = load i8, i8* %15, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 98
  br i1 %123, label %136, label %124

124:                                              ; preds = %117
  %125 = load i8, i8* %15, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 100
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = load i8, i8* %15, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 163
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i8, i8* %15, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 165
  br i1 %135, label %136, label %154

136:                                              ; preds = %132, %128, %124, %117
  %137 = load i8, i8* %15, align 1
  %138 = zext i8 %137 to i32
  %139 = ashr i32 %138, 3
  %140 = shl i32 %139, 2
  %141 = add nsw i32 %140, 154
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %16, align 1
  %143 = load i8, i8* %15, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 6
  %146 = shl i32 %145, 2
  %147 = add nsw i32 %146, 764
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %17, align 1
  %149 = load i8, i8* %16, align 1
  %150 = load i8*, i8** %7, align 8
  store i8 %149, i8* %150, align 1
  %151 = load i8, i8* %17, align 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i8 %151, i8* %153, align 1
  store i32 2, i32* %5, align 4
  br label %157

154:                                              ; preds = %132
  br label %155

155:                                              ; preds = %154, %108
  %156 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %136, %115, %106, %92, %51, %34, %23
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs1999_mbtowc(%struct.TYPE_6__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
