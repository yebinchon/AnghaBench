; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_free_entry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@PLAYLIST_RUNTIME_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.playlist_entry*)* @playlist_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @playlist_free_entry(%struct.playlist_entry* %0) #0 {
  %2 = alloca %struct.playlist_entry*, align 8
  store %struct.playlist_entry* %0, %struct.playlist_entry** %2, align 8
  %3 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %4 = icmp ne %struct.playlist_entry* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %160

6:                                                ; preds = %1
  %7 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %8 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %7, i32 0, i32 20
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %13 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %12, i32 0, i32 20
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @free(i32* %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %18 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %17, i32 0, i32 19
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %23 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %22, i32 0, i32 19
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %28 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %27, i32 0, i32 18
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %33 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %32, i32 0, i32 18
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @free(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %38 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %37, i32 0, i32 17
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %43 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %42, i32 0, i32 17
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @free(i32* %44)
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %48 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %47, i32 0, i32 16
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %53 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %52, i32 0, i32 16
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free(i32* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %58 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %57, i32 0, i32 15
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %63 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %62, i32 0, i32 15
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @free(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %68 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %67, i32 0, i32 14
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %73 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %72, i32 0, i32 14
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @free(i32* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %78 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %77, i32 0, i32 13
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %83 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %82, i32 0, i32 13
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @free(i32* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %88 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %87, i32 0, i32 12
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %93 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %92, i32 0, i32 12
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @free(i32* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %98 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %97, i32 0, i32 11
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %103 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %102, i32 0, i32 11
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @free(i32* %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %108 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %107, i32 0, i32 10
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %113 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %112, i32 0, i32 10
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @string_list_free(i32* %114)
  br label %116

116:                                              ; preds = %111, %106
  %117 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %118 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %117, i32 0, i32 20
  store i32* null, i32** %118, align 8
  %119 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %120 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %119, i32 0, i32 19
  store i32* null, i32** %120, align 8
  %121 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %122 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %121, i32 0, i32 18
  store i32* null, i32** %122, align 8
  %123 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %124 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %123, i32 0, i32 17
  store i32* null, i32** %124, align 8
  %125 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %126 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %125, i32 0, i32 16
  store i32* null, i32** %126, align 8
  %127 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %128 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %127, i32 0, i32 15
  store i32* null, i32** %128, align 8
  %129 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %130 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %129, i32 0, i32 14
  store i32* null, i32** %130, align 8
  %131 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %132 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %131, i32 0, i32 13
  store i32* null, i32** %132, align 8
  %133 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %134 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %133, i32 0, i32 12
  store i32* null, i32** %134, align 8
  %135 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %136 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %135, i32 0, i32 11
  store i32* null, i32** %136, align 8
  %137 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %138 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %137, i32 0, i32 10
  store i32* null, i32** %138, align 8
  %139 = load i32, i32* @PLAYLIST_RUNTIME_UNKNOWN, align 4
  %140 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %141 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %140, i32 0, i32 9
  store i32 %139, i32* %141, align 8
  %142 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %143 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %142, i32 0, i32 8
  store i64 0, i64* %143, align 8
  %144 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %145 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %144, i32 0, i32 7
  store i64 0, i64* %145, align 8
  %146 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %147 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %146, i32 0, i32 6
  store i64 0, i64* %147, align 8
  %148 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %149 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %148, i32 0, i32 5
  store i64 0, i64* %149, align 8
  %150 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %151 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %150, i32 0, i32 4
  store i64 0, i64* %151, align 8
  %152 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %153 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %152, i32 0, i32 3
  store i64 0, i64* %153, align 8
  %154 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %155 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %154, i32 0, i32 2
  store i64 0, i64* %155, align 8
  %156 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %157 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load %struct.playlist_entry*, %struct.playlist_entry** %2, align 8
  %159 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  br label %160

160:                                              ; preds = %116, %5
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @string_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
