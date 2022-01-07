; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_string_list.c_string_list_clone.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/lists/extr_string_list.c_string_list_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.string_list_elem* }
%struct.string_list_elem = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.string_list* @string_list_clone(%struct.string_list* %0) #0 {
  %2 = alloca %struct.string_list*, align 8
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list_elem*, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store %struct.string_list_elem* null, %struct.string_list_elem** %5, align 8
  %10 = call i64 @calloc(i32 1, i32 16)
  %11 = inttoptr i64 %10 to %struct.string_list*
  store %struct.string_list* %11, %struct.string_list** %6, align 8
  %12 = load %struct.string_list*, %struct.string_list** %6, align 8
  %13 = icmp ne %struct.string_list* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.string_list*, %struct.string_list** %3, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.string_list*, %struct.string_list** %3, align 8
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.string_list*, %struct.string_list** %6, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.string_list*, %struct.string_list** %6, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.string_list*, %struct.string_list** %6, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %15
  %34 = load %struct.string_list*, %struct.string_list** %6, align 8
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.string_list*, %struct.string_list** %6, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %33, %15
  %40 = load %struct.string_list*, %struct.string_list** %6, align 8
  %41 = getelementptr inbounds %struct.string_list, %struct.string_list* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @calloc(i32 %42, i32 16)
  %44 = inttoptr i64 %43 to %struct.string_list_elem*
  store %struct.string_list_elem* %44, %struct.string_list_elem** %5, align 8
  %45 = load %struct.string_list_elem*, %struct.string_list_elem** %5, align 8
  %46 = icmp ne %struct.string_list_elem* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load %struct.string_list*, %struct.string_list** %6, align 8
  %49 = call i32 @free(%struct.string_list* %48)
  store %struct.string_list* null, %struct.string_list** %2, align 8
  br label %123

50:                                               ; preds = %39
  %51 = load %struct.string_list_elem*, %struct.string_list_elem** %5, align 8
  %52 = load %struct.string_list*, %struct.string_list** %6, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 2
  store %struct.string_list_elem* %51, %struct.string_list_elem** %53, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %118, %50
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.string_list*, %struct.string_list** %3, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %121

60:                                               ; preds = %54
  %61 = load %struct.string_list*, %struct.string_list** %3, align 8
  %62 = getelementptr inbounds %struct.string_list, %struct.string_list* %61, i32 0, i32 2
  %63 = load %struct.string_list_elem*, %struct.string_list_elem** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %63, i64 %65
  %67 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strlen(i8* %72)
  br label %75

74:                                               ; preds = %60
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i64 [ %73, %71 ], [ 0, %74 ]
  store i64 %76, i64* %8, align 8
  %77 = load %struct.string_list*, %struct.string_list** %6, align 8
  %78 = getelementptr inbounds %struct.string_list, %struct.string_list* %77, i32 0, i32 2
  %79 = load %struct.string_list_elem*, %struct.string_list_elem** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %79, i64 %81
  %83 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %82, i32 0, i32 0
  store i8* null, i8** %83, align 8
  %84 = load %struct.string_list*, %struct.string_list** %3, align 8
  %85 = getelementptr inbounds %struct.string_list, %struct.string_list* %84, i32 0, i32 2
  %86 = load %struct.string_list_elem*, %struct.string_list_elem** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %86, i64 %88
  %90 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.string_list*, %struct.string_list** %6, align 8
  %93 = getelementptr inbounds %struct.string_list, %struct.string_list* %92, i32 0, i32 2
  %94 = load %struct.string_list_elem*, %struct.string_list_elem** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %94, i64 %96
  %98 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 8
  %99 = load i64, i64* %8, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %75
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, 1
  %104 = call i64 @malloc(i64 %103)
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @strcpy(i8* %106, i8* %107)
  %109 = load i8*, i8** %9, align 8
  %110 = load %struct.string_list*, %struct.string_list** %6, align 8
  %111 = getelementptr inbounds %struct.string_list, %struct.string_list* %110, i32 0, i32 2
  %112 = load %struct.string_list_elem*, %struct.string_list_elem** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %112, i64 %114
  %116 = getelementptr inbounds %struct.string_list_elem, %struct.string_list_elem* %115, i32 0, i32 0
  store i8* %109, i8** %116, align 8
  br label %117

117:                                              ; preds = %101, %75
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %54

121:                                              ; preds = %54
  %122 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %122, %struct.string_list** %2, align 8
  br label %123

123:                                              ; preds = %121, %47, %14
  %124 = load %struct.string_list*, %struct.string_list** %2, align 8
  ret %struct.string_list* %124
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.string_list*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
