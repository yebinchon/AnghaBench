; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_create_vtables.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_create_vtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@kxld_sym_is_vtable = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kxld_sym_is_super_metaclass_pointer = common dso_local global i32 0, align 4
@finish = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*)* @create_vtables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_vtables(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %17, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %23, i32* %7, align 4
  br label %141

24:                                               ; preds = %3
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @kxld_object_get_symtab(i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @kxld_object_is_linked(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @kxld_sym_is_vtable, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @kxld_symtab_iterator_init(i32* %9, i32* %35, i32 %36, i32 %37)
  %39 = call i32 @kxld_symtab_iterator_get_num_remaining(i32* %9)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %16, align 8
  br label %49

41:                                               ; preds = %24
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* @kxld_sym_is_super_metaclass_pointer, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @kxld_symtab_iterator_init(i32* %9, i32* %42, i32 %43, i32 %44)
  %46 = call i32 @kxld_symtab_iterator_get_num_remaining(i32* %9)
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %16, align 8
  br label %49

49:                                               ; preds = %41, %34
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @kxld_array_init(%struct.TYPE_8__* %51, i32 4, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @finish, align 4
  %56 = call i32 @require_noerr(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %125, %49
  %58 = call i32* @kxld_symtab_iterator_get_next(i32* %9)
  store i32* %58, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %126

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @kxld_object_is_linked(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  store i32* %67, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %14, align 8
  br label %76

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @get_vtable_syms_from_smcp(%struct.TYPE_7__* %69, i32* %70, i32* %71, i32** %11, i32** %12)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @finish, align 4
  %75 = call i32 @require_noerr(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %66
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %15, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %15, align 8
  %81 = trunc i64 %79 to i32
  %82 = call i32* @kxld_array_get_item(%struct.TYPE_8__* %78, i32 %81)
  store i32* %82, i32** %13, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @kxld_vtable_init(i32* %83, i32* %84, i32 %87, i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @finish, align 4
  %92 = call i32 @require_noerr(i32 %90, i32 %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @kxld_object_is_linked(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %125, label %98

98:                                               ; preds = %76
  %99 = load i32*, i32** %12, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %15, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %15, align 8
  %106 = trunc i64 %104 to i32
  %107 = call i32* @kxld_array_get_item(%struct.TYPE_8__* %103, i32 %106)
  store i32* %107, i32** %14, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @kxld_vtable_init(i32* %108, i32* %109, i32 %112, i32* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @finish, align 4
  %117 = call i32 @require_noerr(i32 %115, i32 %116)
  br label %124

118:                                              ; preds = %98
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %16, align 8
  %122 = add nsw i64 %121, -1
  store i64 %122, i64* %16, align 8
  %123 = call i32 @kxld_array_resize(%struct.TYPE_8__* %120, i64 %122)
  store i32* null, i32** %14, align 8
  br label %124

124:                                              ; preds = %118, %101
  br label %125

125:                                              ; preds = %124, %76
  br label %57

126:                                              ; preds = %57
  %127 = load i64, i64* %15, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %127, %131
  %133 = zext i1 %132 to i32
  %134 = load i32, i32* @finish, align 4
  %135 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %135, i32* %7, align 4
  %136 = call i32 @require_action(i32 %133, i32 %134, i32 %135)
  %137 = load i64, i64* @TRUE, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %126, %22
  %142 = load i32, i32* %7, align 4
  ret i32 %142
}

declare dso_local i32* @kxld_object_get_symtab(i32) #1

declare dso_local i64 @kxld_object_is_linked(i32) #1

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local i32 @kxld_symtab_iterator_get_num_remaining(i32*) #1

declare dso_local i32 @kxld_array_init(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i32 @require_noerr(i32, i32) #1

declare dso_local i32* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local i32 @get_vtable_syms_from_smcp(%struct.TYPE_7__*, i32*, i32*, i32**, i32**) #1

declare dso_local i32* @kxld_array_get_item(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @kxld_vtable_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @kxld_array_resize(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @require_action(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
