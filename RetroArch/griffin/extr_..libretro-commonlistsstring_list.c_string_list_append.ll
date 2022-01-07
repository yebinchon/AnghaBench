; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_append.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %union.string_list_elem_attr }
%union.string_list_elem_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_list_append(%struct.string_list* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.string_list_elem_attr, align 4
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.string_list* %0, %struct.string_list** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.string_list*, %struct.string_list** %6, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.string_list*, %struct.string_list** %6, align 8
  %14 = getelementptr inbounds %struct.string_list, %struct.string_list* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.string_list*, %struct.string_list** %6, align 8
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  %23 = call i32 @string_list_capacity(%struct.string_list* %18, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %58

26:                                               ; preds = %17, %3
  %27 = load i8*, i8** %7, align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %58

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.string_list*, %struct.string_list** %6, align 8
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.string_list*, %struct.string_list** %6, align 8
  %38 = getelementptr inbounds %struct.string_list, %struct.string_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i8* %33, i8** %42, align 8
  %43 = load %struct.string_list*, %struct.string_list** %6, align 8
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.string_list*, %struct.string_list** %6, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = bitcast %union.string_list_elem_attr* %51 to i8*
  %53 = bitcast %union.string_list_elem_attr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.string_list*, %struct.string_list** %6, align 8
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %32, %31, %25
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @string_list_capacity(%struct.string_list*, i32) #1

declare dso_local i8* @strdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
