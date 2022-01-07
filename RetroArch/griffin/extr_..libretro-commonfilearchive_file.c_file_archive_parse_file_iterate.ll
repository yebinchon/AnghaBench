; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_parse_file_iterate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonfilearchive_file.c_file_archive_parse_file_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 (i32*)* }
%struct.archive_extract_userdata = type { i32*, i32 }
%struct.file_archive_file_backend = type { i32 (%struct.TYPE_7__*, i8*, %struct.archive_extract_userdata.0*, i32)* }
%struct.archive_extract_userdata.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_archive_parse_file_iterate(%struct.TYPE_7__* %0, i32* %1, i8* %2, i8* %3, i32 %4, %struct.archive_extract_userdata* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.archive_extract_userdata*, align 8
  %14 = alloca %struct.file_archive_file_backend*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.archive_extract_userdata* %5, %struct.archive_extract_userdata** %13, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %152

19:                                               ; preds = %6
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %140 [
    i32 128, label %23
    i32 130, label %24
    i32 129, label %50
    i32 131, label %79
    i32 132, label %81
  ]

23:                                               ; preds = %19
  br label %140

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @file_archive_parse_file_init(%struct.TYPE_7__* %25, i8* %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %31 = icmp ne %struct.archive_extract_userdata* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %37 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %39 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strlcpy(i32 %40, i8* %41, i32 4)
  br label %43

43:                                               ; preds = %32, %29
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 129, i32* %45, align 8
  br label %49

46:                                               ; preds = %24
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 131, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  br label %140

50:                                               ; preds = %19
  %51 = load i8*, i8** %10, align 8
  %52 = call %struct.file_archive_file_backend* @file_archive_get_file_backend(i8* %51)
  %53 = icmp ne %struct.file_archive_file_backend* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = call %struct.file_archive_file_backend* @file_archive_get_file_backend(i8* %55)
  store %struct.file_archive_file_backend* %56, %struct.file_archive_file_backend** %14, align 8
  %57 = load %struct.file_archive_file_backend*, %struct.file_archive_file_backend** %14, align 8
  %58 = getelementptr inbounds %struct.file_archive_file_backend, %struct.file_archive_file_backend* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_7__*, i8*, %struct.archive_extract_userdata.0*, i32)*, i32 (%struct.TYPE_7__*, i8*, %struct.archive_extract_userdata.0*, i32)** %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %63 = bitcast %struct.archive_extract_userdata* %62 to %struct.archive_extract_userdata.0*
  %64 = load i32, i32* %12, align 4
  %65 = call i32 %59(%struct.TYPE_7__* %60, i8* %61, %struct.archive_extract_userdata.0* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 132, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %54
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i32 131, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %71
  store i32 0, i32* %7, align 4
  br label %152

78:                                               ; preds = %50
  store i32 -1, i32* %7, align 4
  br label %152

79:                                               ; preds = %19
  %80 = load i32*, i32** %9, align 8
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %19, %79
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @file_archive_free(i32* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %86, %81
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %139

98:                                               ; preds = %93
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = icmp ne %struct.TYPE_6__* %101, null
  br i1 %102, label %103, label %139

103:                                              ; preds = %98
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32 (i32*)*, i32 (i32*)** %107, align 8
  %109 = icmp ne i32 (i32*)* %108, null
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32 (i32*)*, i32 (i32*)** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 %115(i32* %118)
  br label %120

120:                                              ; preds = %110, %103
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @free(i32* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  store i32* null, i32** %132, align 8
  %133 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %134 = icmp ne %struct.archive_extract_userdata* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.archive_extract_userdata*, %struct.archive_extract_userdata** %13, align 8
  %137 = getelementptr inbounds %struct.archive_extract_userdata, %struct.archive_extract_userdata* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %98, %93
  br label %140

140:                                              ; preds = %19, %139, %49, %23
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 132
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 131
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %140
  store i32 -1, i32* %7, align 4
  br label %152

151:                                              ; preds = %145
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %151, %150, %78, %77, %18
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @file_archive_parse_file_init(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local %struct.file_archive_file_backend* @file_archive_get_file_backend(i8*) #1

declare dso_local i32 @file_archive_free(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
