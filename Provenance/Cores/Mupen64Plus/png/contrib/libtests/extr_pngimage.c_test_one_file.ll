; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_test_one_file.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngimage.c_test_one_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i8*, i64, i32, i32, i8*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"cache file\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ignored transforms\00", align 1
@EXHAUSTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"active transforms\00", align 1
@read_transforms = common dso_local global i32 0, align 4
@FIND_BAD_COMBOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"%s[0x%x]: PROBLEM: 0x%x[0x%x] ANTIDOTE: 0x%x\0A\00", align 1
@rw_transforms = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: no %sbad combos found\0A\00", align 1
@SKIP_BUGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"additional \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@write_transforms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i8*)* @test_one_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_one_file(%struct.display* %0, i8* %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.display* %0, %struct.display** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.display*, %struct.display** %3, align 8
  %13 = getelementptr inbounds %struct.display, %struct.display* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load %struct.display*, %struct.display** %3, align 8
  %15 = getelementptr inbounds %struct.display, %struct.display* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.display*, %struct.display** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @display_cache_file(%struct.display* %16, i8* %17)
  %19 = load %struct.display*, %struct.display** %3, align 8
  %20 = call i32 @update_display(%struct.display* %19)
  %21 = load %struct.display*, %struct.display** %3, align 8
  %22 = getelementptr inbounds %struct.display, %struct.display* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load %struct.display*, %struct.display** %3, align 8
  %27 = load %struct.display*, %struct.display** %3, align 8
  %28 = getelementptr inbounds %struct.display, %struct.display* %27, i32 0, i32 7
  %29 = load %struct.display*, %struct.display** %3, align 8
  %30 = getelementptr inbounds %struct.display, %struct.display* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @read_png(%struct.display* %26, i32* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.display*, %struct.display** %3, align 8
  %35 = call i32 @compare_read(%struct.display* %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %25
  br label %150

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.display*, %struct.display** %3, align 8
  %41 = getelementptr inbounds %struct.display, %struct.display* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  %43 = load %struct.display*, %struct.display** %3, align 8
  %44 = getelementptr inbounds %struct.display, %struct.display* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @EXHAUSTIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @first_transform(i32 %50)
  store i32 %51, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %113, %39
  %53 = load %struct.display*, %struct.display** %3, align 8
  %54 = load %struct.display*, %struct.display** %3, align 8
  %55 = getelementptr inbounds %struct.display, %struct.display* %54, i32 0, i32 7
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @read_png(%struct.display* %53, i32* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %91, %60
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @read_transforms, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %114

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @read_transforms, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = icmp ule i32 %73, %74
  br i1 %75, label %91, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load %struct.display*, %struct.display** %3, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i64 @skip_transform(%struct.display* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %86, %81, %76, %70
  %92 = phi i1 [ true, %81 ], [ true, %76 ], [ true, %70 ], [ %90, %86 ]
  br i1 %92, label %62, label %93

93:                                               ; preds = %91
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @read_transforms, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %7, align 4
  br label %113

102:                                              ; preds = %52
  %103 = load i32, i32* %7, align 4
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %114

110:                                              ; preds = %102
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @first_transform(i32 %111)
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %93
  br label %52

114:                                              ; preds = %109, %66
  %115 = load %struct.display*, %struct.display** %3, align 8
  %116 = getelementptr inbounds %struct.display, %struct.display* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @FIND_BAD_COMBOS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %150

121:                                              ; preds = %114
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  %125 = load %struct.display*, %struct.display** %3, align 8
  %126 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @rw_transforms, align 4
  %132 = load i32, i32* %10, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %127, i32 %128, i32 %129, i32 %130, i32 %134)
  br label %149

136:                                              ; preds = %121
  %137 = load %struct.display*, %struct.display** %3, align 8
  %138 = getelementptr inbounds %struct.display, %struct.display* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.display*, %struct.display** %3, align 8
  %141 = getelementptr inbounds %struct.display, %struct.display* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @SKIP_BUGS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %148 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %139, i8* %147)
  br label %149

149:                                              ; preds = %136, %124
  br label %150

150:                                              ; preds = %37, %149, %114
  ret void
}

declare dso_local i32 @display_cache_file(%struct.display*, i8*) #1

declare dso_local i32 @update_display(%struct.display*) #1

declare dso_local i32 @read_png(%struct.display*, i32*, i8*, i32) #1

declare dso_local i32 @compare_read(%struct.display*, i32) #1

declare dso_local i32 @first_transform(i32) #1

declare dso_local i64 @skip_transform(%struct.display*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
