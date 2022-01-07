; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_append_n.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..libretro-commonlistsstring_list.c_string_list_append_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %union.string_list_elem_attr }
%union.string_list_elem_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_list_append_n(%struct.string_list* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.string_list_elem_attr, align 4
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %6, i32 0, i32 0
  store i32 %3, i32* %11, align 4
  store %struct.string_list* %0, %struct.string_list** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %12 = load %struct.string_list*, %struct.string_list** %7, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.string_list*, %struct.string_list** %7, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.string_list*, %struct.string_list** %7, align 8
  %21 = load %struct.string_list*, %struct.string_list** %7, align 8
  %22 = getelementptr inbounds %struct.string_list, %struct.string_list* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = call i32 @string_list_capacity(%struct.string_list* %20, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %67

28:                                               ; preds = %19, %4
  %29 = load i32, i32* %9, align 4
  %30 = add i32 %29, 1
  %31 = call i64 @malloc(i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, 1
  %41 = call i32 @strlcpy(i8* %37, i8* %38, i32 %40)
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.string_list*, %struct.string_list** %7, align 8
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.string_list*, %struct.string_list** %7, align 8
  %47 = getelementptr inbounds %struct.string_list, %struct.string_list* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %42, i8** %51, align 8
  %52 = load %struct.string_list*, %struct.string_list** %7, align 8
  %53 = getelementptr inbounds %struct.string_list, %struct.string_list* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.string_list*, %struct.string_list** %7, align 8
  %56 = getelementptr inbounds %struct.string_list, %struct.string_list* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = bitcast %union.string_list_elem_attr* %60 to i8*
  %62 = bitcast %union.string_list_elem_attr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 4 %62, i64 4, i1 false)
  %63 = load %struct.string_list*, %struct.string_list** %7, align 8
  %64 = getelementptr inbounds %struct.string_list, %struct.string_list* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %36, %35, %27
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @string_list_capacity(%struct.string_list*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
