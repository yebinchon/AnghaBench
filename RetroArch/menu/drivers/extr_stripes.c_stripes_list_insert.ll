; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_insert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/drivers/extr_stripes.c_stripes_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"XMB node could not be allocated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8*, i8*, i8*, i64, i32)* @stripes_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripes_list_insert(i8* %0, i32* %1, i8* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %13, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %16, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %18, align 8
  %24 = call i64 (...) @menu_navigation_get_selection()
  store i64 %24, i64* %19, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %26 = icmp ne %struct.TYPE_7__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %7
  br label %114

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i64 @file_list_get_userdata_at_offset(i32* %32, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %17, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = call %struct.TYPE_6__* (...) @stripes_alloc_node()
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %17, align 8
  br label %40

40:                                               ; preds = %38, %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %114

45:                                               ; preds = %40
  %46 = load i64, i64* %19, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %15, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @string_is_empty(i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @free(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @strdup(i8* %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %45
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @stripes_item_y(%struct.TYPE_7__* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %66
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %93, %66
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %113 = call i32 @file_list_set_userdata(i32* %110, i32 %111, %struct.TYPE_6__* %112)
  br label %114

114:                                              ; preds = %109, %43, %30
  ret void
}

declare dso_local i64 @menu_navigation_get_selection(...) #1

declare dso_local i64 @file_list_get_userdata_at_offset(i32*, i32) #1

declare dso_local %struct.TYPE_6__* @stripes_alloc_node(...) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @stripes_item_y(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @file_list_set_userdata(i32*, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
