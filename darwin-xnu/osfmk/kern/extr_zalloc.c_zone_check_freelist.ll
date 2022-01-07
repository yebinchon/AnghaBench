; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_check_freelist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_zone_check_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.zone_free_element = type { %struct.zone_free_element* }
%struct.zone_page_metadata = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"zone_check_freelist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64)* @zone_check_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_check_freelist(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zone_free_element*, align 8
  %6 = alloca %struct.zone_page_metadata*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = call i64 @queue_first(i32* %14)
  %16 = inttoptr i64 %15 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %16, %struct.zone_page_metadata** %6, align 8
  br label %17

17:                                               ; preds = %51, %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %22 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %21, i32 0, i32 0
  %23 = call i32 @queue_end(i32* %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %56

26:                                               ; preds = %17
  %27 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %28 = call %struct.zone_free_element* @page_metadata_get_freelist(%struct.zone_page_metadata* %27)
  store %struct.zone_free_element* %28, %struct.zone_free_element** %5, align 8
  br label %29

29:                                               ; preds = %46, %26
  %30 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %31 = icmp ne %struct.zone_free_element* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %35 = ptrtoint %struct.zone_free_element* %34 to i64
  %36 = call i32 @is_sane_zone_element(%struct.TYPE_6__* %33, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %40 = ptrtoint %struct.zone_free_element* %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %32
  %44 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %48 = getelementptr inbounds %struct.zone_free_element, %struct.zone_free_element* %47, i32 0, i32 0
  %49 = load %struct.zone_free_element*, %struct.zone_free_element** %48, align 8
  store %struct.zone_free_element* %49, %struct.zone_free_element** %5, align 8
  br label %29

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %53 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %52, i32 0, i32 0
  %54 = call i64 @queue_next(i32* %53)
  %55 = inttoptr i64 %54 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %55, %struct.zone_page_metadata** %6, align 8
  br label %17

56:                                               ; preds = %17
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i64 @queue_first(i32* %60)
  %62 = inttoptr i64 %61 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %62, %struct.zone_page_metadata** %6, align 8
  br label %63

63:                                               ; preds = %97, %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %68 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %67, i32 0, i32 0
  %69 = call i32 @queue_end(i32* %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %102

72:                                               ; preds = %63
  %73 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %74 = call %struct.zone_free_element* @page_metadata_get_freelist(%struct.zone_page_metadata* %73)
  store %struct.zone_free_element* %74, %struct.zone_free_element** %5, align 8
  br label %75

75:                                               ; preds = %92, %72
  %76 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %77 = icmp ne %struct.zone_free_element* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %81 = ptrtoint %struct.zone_free_element* %80 to i64
  %82 = call i32 @is_sane_zone_element(%struct.TYPE_6__* %79, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %86 = ptrtoint %struct.zone_free_element* %85 to i64
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84, %78
  %90 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %94 = getelementptr inbounds %struct.zone_free_element, %struct.zone_free_element* %93, i32 0, i32 0
  %95 = load %struct.zone_free_element*, %struct.zone_free_element** %94, align 8
  store %struct.zone_free_element* %95, %struct.zone_free_element** %5, align 8
  br label %75

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %99 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %98, i32 0, i32 0
  %100 = call i64 @queue_next(i32* %99)
  %101 = inttoptr i64 %100 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %101, %struct.zone_page_metadata** %6, align 8
  br label %63

102:                                              ; preds = %63
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = call i64 @queue_first(i32* %105)
  %107 = inttoptr i64 %106 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %107, %struct.zone_page_metadata** %6, align 8
  br label %108

108:                                              ; preds = %142, %102
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %113 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %112, i32 0, i32 0
  %114 = call i32 @queue_end(i32* %111, i32* %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  br i1 %116, label %117, label %147

117:                                              ; preds = %108
  %118 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %119 = call %struct.zone_free_element* @page_metadata_get_freelist(%struct.zone_page_metadata* %118)
  store %struct.zone_free_element* %119, %struct.zone_free_element** %5, align 8
  br label %120

120:                                              ; preds = %137, %117
  %121 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %122 = icmp ne %struct.zone_free_element* %121, null
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %126 = ptrtoint %struct.zone_free_element* %125 to i64
  %127 = call i32 @is_sane_zone_element(%struct.TYPE_6__* %124, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %131 = ptrtoint %struct.zone_free_element* %130 to i64
  %132 = load i64, i64* %4, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %123
  %135 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %129
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.zone_free_element*, %struct.zone_free_element** %5, align 8
  %139 = getelementptr inbounds %struct.zone_free_element, %struct.zone_free_element* %138, i32 0, i32 0
  %140 = load %struct.zone_free_element*, %struct.zone_free_element** %139, align 8
  store %struct.zone_free_element* %140, %struct.zone_free_element** %5, align 8
  br label %120

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %6, align 8
  %144 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %143, i32 0, i32 0
  %145 = call i64 @queue_next(i32* %144)
  %146 = inttoptr i64 %145 to %struct.zone_page_metadata*
  store %struct.zone_page_metadata* %146, %struct.zone_page_metadata** %6, align 8
  br label %108

147:                                              ; preds = %108
  ret void
}

declare dso_local i64 @queue_first(i32*) #1

declare dso_local i32 @queue_end(i32*, i32*) #1

declare dso_local %struct.zone_free_element* @page_metadata_get_freelist(%struct.zone_page_metadata*) #1

declare dso_local i32 @is_sane_zone_element(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @queue_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
