; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_free_to_zone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zalloc.c_free_to_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.zone_page_metadata = type { i32, i32, i64 }
%struct.zone_free_element = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"zfree: invalid head pointer %p for freelist of zone %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"zfree: freeing invalid pointer %p to zone %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"zfree: double free of %p to zone %s\0A\00", align 1
@zp_poisoned_cookie = common dso_local global i32 0, align 4
@zp_nopoison_cookie = common dso_local global i32 0, align 4
@ASAN_HEAP_FREED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i64)* @free_to_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_to_zone(%struct.TYPE_7__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zone_page_metadata*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32* @get_backup_ptr(i32 %16, i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.zone_free_element*
  %22 = load i32, i32* @FALSE, align 4
  %23 = call %struct.zone_page_metadata* @get_zone_page_metadata(%struct.zone_free_element* %21, i32 %22)
  store %struct.zone_page_metadata* %23, %struct.zone_page_metadata** %8, align 8
  %24 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %25 = call %struct.TYPE_7__* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = icmp eq %struct.TYPE_7__* %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %31 = call i64 @page_metadata_get_freelist(%struct.zone_page_metadata* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @is_sane_zone_element(%struct.TYPE_7__* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @__improbable(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %3
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @is_sane_zone_element(%struct.TYPE_7__* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @__improbable(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %64)
  br label %66

66:                                               ; preds = %58, %49
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @__improbable(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %79)
  br label %81

81:                                               ; preds = %73, %66
  %82 = load i32, i32* %7, align 4
  %83 = load i64, i64* %6, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @zp_poisoned_cookie, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @zp_nopoison_cookie, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = xor i32 %82, %90
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @zp_nopoison_cookie, align 4
  %95 = xor i32 %93, %94
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to %struct.zone_free_element*
  %101 = call i32 @page_metadata_set_freelist(%struct.zone_page_metadata* %97, %struct.zone_free_element* %100)
  %102 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %103 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %89
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @from_zone_map(i32 %111, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %110
  %118 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %119 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %127 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %126, i32 0, i32 1
  %128 = call i32 @re_queue_tail(i32* %125, i32* %127)
  br label %130

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %122
  br label %168

131:                                              ; preds = %110, %89
  %132 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %133 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %136 = call i32 @get_metadata_alloc_count(%struct.zone_page_metadata* %135)
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %143 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %142, i32 0, i32 1
  %144 = call i32 @re_queue_tail(i32* %141, i32* %143)
  %145 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %146 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  br label %167

154:                                              ; preds = %131
  %155 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %156 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.zone_page_metadata*, %struct.zone_page_metadata** %8, align 8
  %164 = getelementptr inbounds %struct.zone_page_metadata, %struct.zone_page_metadata* %163, i32 0, i32 1
  %165 = call i32 @re_queue_tail(i32* %162, i32* %164)
  br label %166

166:                                              ; preds = %159, %154
  br label %167

167:                                              ; preds = %166, %138
  br label %168

168:                                              ; preds = %167, %130
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  ret void
}

declare dso_local i32* @get_backup_ptr(i32, i32*) #1

declare dso_local %struct.zone_page_metadata* @get_zone_page_metadata(%struct.zone_free_element*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @PAGE_METADATA_GET_ZONE(%struct.zone_page_metadata*) #1

declare dso_local i64 @page_metadata_get_freelist(%struct.zone_page_metadata*) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32 @is_sane_zone_element(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @panic(i8*, i8*, i32) #1

declare dso_local i32 @page_metadata_set_freelist(%struct.zone_page_metadata*, %struct.zone_free_element*) #1

declare dso_local i32 @from_zone_map(i32, i32) #1

declare dso_local i32 @re_queue_tail(i32*, i32*) #1

declare dso_local i32 @get_metadata_alloc_count(%struct.zone_page_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
