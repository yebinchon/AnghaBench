; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_check_text.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_standard_check_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i64, i64, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"text: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c": \00", align 1
@TEXT_COMPRESSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"compression [%d->%d], \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"keyword \22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\22, \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"null, \00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"text lost, \00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"text length changed[%lu->%lu], \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"text becomes \22\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\22 (was \22\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\22), \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"iTXt length set, \00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"iTXt language \22\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"iTXt keyword \22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i8*, i8*)* @standard_check_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @standard_check_text(i32 %0, %struct.TYPE_3__* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %15 = call i64 @safecat(i8* %14, i32 1024, i64 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %15, i64* %10, align 8
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 @safecat(i8* %16, i32 1024, i64 %17, i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @safecat(i8* %20, i32 1024, i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TEXT_COMPRESSION, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %4
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %31 = load i64, i64* @TEXT_COMPRESSION, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %31, i64 %34)
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %39 = call i64 @safecat(i8* %36, i32 1024, i64 %37, i8* %38)
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %29, %4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %45, %40
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @safecat(i8* %53, i32 1024, i64 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i64 %55, i64* %10, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @safecat(i8* %61, i32 1024, i64 %62, i8* %65)
  store i64 %66, i64* %10, align 8
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %68 = load i64, i64* %10, align 8
  %69 = call i64 @safecat(i8* %67, i32 1024, i64 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i64 %69, i64* %10, align 8
  br label %74

70:                                               ; preds = %52
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @safecat(i8* %71, i32 1024, i64 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %70, %60
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @safecat(i8* %81, i32 1024, i64 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i64 %83, i64* %10, align 8
  br label %131

84:                                               ; preds = %75
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i64 @strlen(i8* %88)
  %90 = icmp ne i64 %87, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %93 = load i8*, i8** %8, align 8
  %94 = call i64 @strlen(i8* %93)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @sprintf(i8* %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %94, i64 %97)
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %102 = call i64 @safecat(i8* %99, i32 1024, i64 %100, i8* %101)
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %91, %84
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strcmp(i8* %106, i8* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %103
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @safecat(i8* %111, i32 1024, i64 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i64 %113, i64* %10, align 8
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i64 @safecat(i8* %114, i32 1024, i64 %115, i8* %118)
  store i64 %119, i64* %10, align 8
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %121 = load i64, i64* %10, align 8
  %122 = call i64 @safecat(i8* %120, i32 1024, i64 %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  store i64 %122, i64* %10, align 8
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %124 = load i64, i64* %10, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @safecat(i8* %123, i32 1024, i64 %124, i8* %125)
  store i64 %126, i64* %10, align 8
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %128 = load i64, i64* %10, align 8
  %129 = call i64 @safecat(i8* %127, i32 1024, i64 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i64 %129, i64* %10, align 8
  br label %130

130:                                              ; preds = %110, %103
  br label %131

131:                                              ; preds = %130, %80
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @safecat(i8* %137, i32 1024, i64 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %136, %131
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 5
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @safecat(i8* %146, i32 1024, i64 %147, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  store i64 %148, i64* %10, align 8
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 5
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @safecat(i8* %149, i32 1024, i64 %150, i8* %153)
  store i64 %154, i64* %10, align 8
  %155 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %156 = load i64, i64* %10, align 8
  %157 = call i64 @safecat(i8* %155, i32 1024, i64 %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i64 %157, i64* %10, align 8
  br label %158

158:                                              ; preds = %145, %140
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 6
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %176

163:                                              ; preds = %158
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %165 = load i64, i64* %10, align 8
  %166 = call i64 @safecat(i8* %164, i32 1024, i64 %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i64 %166, i64* %10, align 8
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %168 = load i64, i64* %10, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 6
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @safecat(i8* %167, i32 1024, i64 %168, i8* %171)
  store i64 %172, i64* %10, align 8
  %173 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %174 = load i64, i64* %10, align 8
  %175 = call i64 @safecat(i8* %173, i32 1024, i64 %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i64 %175, i64* %10, align 8
  br label %176

176:                                              ; preds = %163, %158
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* %11, align 8
  %179 = icmp ugt i64 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i64, i64* %10, align 8
  %182 = sub i64 %181, 2
  %183 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load i32, i32* %5, align 4
  %185 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %186 = call i32 @png_error(i32 %184, i8* %185)
  br label %187

187:                                              ; preds = %180, %176
  ret void
}

declare dso_local i64 @safecat(i8*, i32, i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @png_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
