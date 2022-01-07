; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpack_writecopy_helper.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/ogg/extr_bitwise.c_oggpack_writecopy_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64*, i64*, i64 }

@BUFFER_INCREMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i64, void (%struct.TYPE_6__*, i64, i32)*, i32)* @oggpack_writecopy_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oggpack_writecopy_helper(%struct.TYPE_6__* %0, i8* %1, i64 %2, void (%struct.TYPE_6__*, i64, i32)* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca void (%struct.TYPE_6__*, i64, i32)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store void (%struct.TYPE_6__*, i64, i32)* %3, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = sdiv i64 %16, 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = mul nsw i64 %18, 8
  %20 = load i64, i64* %8, align 8
  %21 = sub nsw i64 %20, %19
  store i64 %21, i64* %8, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  call void %33(%struct.TYPE_6__* %34, i64 %40, i32 8)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %27

44:                                               ; preds = %27
  br label %129

45:                                               ; preds = %5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  %51 = add nsw i64 %50, 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %109

56:                                               ; preds = %45
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %162

62:                                               ; preds = %56
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %12, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @BUFFER_INCREMENT, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %162

75:                                               ; preds = %62
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i64, i64* @BUFFER_INCREMENT, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 3
  %87 = load i64*, i64** %86, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @_ogg_realloc(i64* %87, i64 %90)
  store i8* %91, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %75
  br label %162

95:                                               ; preds = %75
  %96 = load i8*, i8** %14, align 8
  %97 = bitcast i8* %96 to i64*
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  store i64* %97, i64** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i64*, i64** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i64, i64* %102, i64 %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i64* %106, i64** %108, align 8
  br label %109

109:                                              ; preds = %95, %45
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i64*, i64** %111, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @memmove(i64* %112, i8* %113, i64 %114)
  %116 = load i64, i64* %12, align 8
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 %116
  store i64* %120, i64** %118, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %109, %44
  %130 = load i64, i64* %8, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %161

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i64, i64* %8, align 8
  %144 = sub nsw i64 8, %143
  %145 = trunc i64 %144 to i32
  %146 = ashr i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %8, align 8
  %149 = trunc i64 %148 to i32
  call void %136(%struct.TYPE_6__* %137, i64 %147, i32 %149)
  br label %160

150:                                              ; preds = %132
  %151 = load void (%struct.TYPE_6__*, i64, i32)*, void (%struct.TYPE_6__*, i64, i32)** %9, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i64, i64* %12, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = load i64, i64* %8, align 8
  %159 = trunc i64 %158 to i32
  call void %151(%struct.TYPE_6__* %152, i64 %157, i32 %159)
  br label %160

160:                                              ; preds = %150, %135
  br label %161

161:                                              ; preds = %160, %129
  br label %165

162:                                              ; preds = %94, %74, %61
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = call i32 @oggpack_writeclear(%struct.TYPE_6__* %163)
  br label %165

165:                                              ; preds = %162, %161
  ret void
}

declare dso_local i8* @_ogg_realloc(i64*, i64) #1

declare dso_local i32 @memmove(i64*, i8*, i64) #1

declare dso_local i32 @oggpack_writeclear(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
