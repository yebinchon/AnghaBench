; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gzwrite.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libz/extr_gzwrite.c_gzwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, %struct.TYPE_8__, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64 }

@GZ_WRITE = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@Z_DATA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"requested length does not fit in int\00", align 1
@Z_NO_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzwrite(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %192

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 7
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GZ_WRITE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @Z_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %17
  store i32 0, i32* %4, align 4
  br label %192

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = load i32, i32* @Z_DATA_ERROR, align 4
  %40 = call i32 @gz_error(%struct.TYPE_10__* %38, i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %192

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %192

45:                                               ; preds = %41
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = call i32 @gz_init(%struct.TYPE_10__* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %192

55:                                               ; preds = %50, %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gz_zero(%struct.TYPE_10__* %63, i32 %66)
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %192

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %157

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %153, %78
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %93, %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %90
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %113, %90
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @memcpy(i64 %121, i8* %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add i32 %135, %131
  store i32 %136, i32* %134, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8* %140, i8** %6, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %7, align 4
  %143 = sub i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %115
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %148 = load i32, i32* @Z_NO_FLUSH, align 4
  %149 = call i32 @gz_comp(%struct.TYPE_10__* %147, i32 %148)
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %192

152:                                              ; preds = %146, %115
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %79, label %156

156:                                              ; preds = %153
  br label %190

157:                                              ; preds = %71
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %164 = load i32, i32* @Z_NO_FLUSH, align 4
  %165 = call i32 @gz_comp(%struct.TYPE_10__* %163, i32 %164)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %192

168:                                              ; preds = %162, %157
  %169 = load i32, i32* %7, align 4
  %170 = zext i32 %169 to i64
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load i8*, i8** %6, align 8
  %174 = bitcast i8* %173 to i32*
  %175 = ptrtoint i32* %174 to i64
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = add i32 %182, %178
  store i32 %183, i32* %181, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %185 = load i32, i32* @Z_NO_FLUSH, align 4
  %186 = call i32 @gz_comp(%struct.TYPE_10__* %184, i32 %185)
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %189

188:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %192

189:                                              ; preds = %168
  br label %190

190:                                              ; preds = %189, %156
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %190, %188, %167, %151, %69, %54, %44, %37, %33, %16
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @gz_error(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @gz_init(%struct.TYPE_10__*) #1

declare dso_local i32 @gz_zero(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @gz_comp(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
