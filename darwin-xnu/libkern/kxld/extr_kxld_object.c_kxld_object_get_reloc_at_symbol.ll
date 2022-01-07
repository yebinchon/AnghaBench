; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_get_reloc_at_symbol.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_object.c_kxld_object_get_reloc_at_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@finish = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kxld_object_get_reloc_at_symbol(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i32 @check(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = call i32 @check(%struct.TYPE_13__* %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_14__* @kxld_object_get_section_by_index(%struct.TYPE_13__* %12, i32 %15)
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = load i32, i32* @finish, align 4
  %19 = call i32 @require(%struct.TYPE_14__* %17, i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = call i64 @kxld_object_is_final_image(%struct.TYPE_13__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @kxld_reloc_get_reloc_by_offset(i32* %25, i32 %28)
  store i32* %29, i32** %5, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32* @kxld_reloc_get_reloc_by_offset(i32* %34, i32 %37)
  store i32* %38, i32** %5, align 8
  br label %39

39:                                               ; preds = %32, %23
  br label %48

40:                                               ; preds = %2
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = call i32 @kxld_sym_get_section_offset(%struct.TYPE_13__* %41, %struct.TYPE_14__* %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32* @kxld_reloc_get_reloc_by_offset(i32* %45, i32 %46)
  store i32* %47, i32** %5, align 8
  br label %48

48:                                               ; preds = %40, %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %5, align 8
  ret i32* %50
}

declare dso_local i32 @check(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @kxld_object_get_section_by_index(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @require(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @kxld_object_is_final_image(%struct.TYPE_13__*) #1

declare dso_local i32* @kxld_reloc_get_reloc_by_offset(i32*, i32) #1

declare dso_local i32 @kxld_sym_get_section_offset(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
