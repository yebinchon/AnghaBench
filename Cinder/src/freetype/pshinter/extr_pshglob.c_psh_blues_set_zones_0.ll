; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_set_zones_0.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/pshinter/extr_pshglob.c_psh_blues_set_zones_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64*, %struct.TYPE_6__*, %struct.TYPE_6__*)* @psh_blues_set_zones_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_blues_set_zones_0(i32 %0, i32 %1, i32 %2, i64* %3, %struct.TYPE_6__* %4, %struct.TYPE_6__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca %struct.TYPE_5__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @FT_UNUSED(i32 %29)
  br label %31

31:                                               ; preds = %153, %6
  %32 = load i32, i32* %9, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %156

34:                                               ; preds = %31
  store i32 0, i32* %21, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37, %34
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %17, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %19, align 8
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %66

53:                                               ; preds = %37
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %16, align 8
  %57 = load i64*, i64** %10, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %16, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %17, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %19, align 8
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %18, align 4
  store i32 1, i32* %21, align 4
  br label %66

66:                                               ; preds = %53, %40
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %20, align 8
  br label %68

68:                                               ; preds = %110, %66
  %69 = load i32, i32* %18, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %115

71:                                               ; preds = %68
  %72 = load i64, i64* %16, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %115

78:                                               ; preds = %71
  %79 = load i64, i64* %16, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %22, align 8
  %88 = load i64, i64* %17, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %84
  %91 = load i64, i64* %17, align 8
  %92 = load i64, i64* %22, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i64, i64* %17, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %94, %90
  br label %108

99:                                               ; preds = %84
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %22, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i64, i64* %17, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  br label %108

108:                                              ; preds = %107, %98
  br label %150

109:                                              ; preds = %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %18, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 1
  store %struct.TYPE_5__* %114, %struct.TYPE_5__** %20, align 8
  br label %68

115:                                              ; preds = %77, %68
  br label %116

116:                                              ; preds = %131, %115
  %117 = load i32, i32* %18, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %127
  %129 = bitcast %struct.TYPE_5__* %123 to i8*
  %130 = bitcast %struct.TYPE_5__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 16, i1 false)
  br label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %18, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %18, align 4
  br label %116

134:                                              ; preds = %116
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %149

146:                                              ; preds = %134
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %108
  %151 = load i64*, i64** %10, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 2
  store i64* %152, i64** %10, align 8
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %154, 2
  store i32 %155, i32* %9, align 4
  br label %31

156:                                              ; preds = %31
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  ret void
}

declare dso_local i32 @FT_UNUSED(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
