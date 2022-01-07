; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_export_symbols_through_interface.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/kxld/extr_kxld_kext.c_export_symbols_through_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32* }

@KERN_FAILURE = common dso_local global i32 0, align 4
@kxld_sym_is_undefined = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kKxldLogLinking = common dso_local global i32 0, align 4
@kKxldLogWarn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"In interface %s of %s, couldn't find symbol %s\0A\00", align 1
@finish = common dso_local global i32 0, align 4
@kxld_sym_is_indirect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"In interface %s of %s, couldn't find indirect symbol %s (%s)\0A\00", align 1
@kxld_sym_is_obsolete = common dso_local global i32 0, align 4
@kxld_sym_is_cxx = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export_symbols_through_interface(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %17, i32* %11, align 4
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @check(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @check(i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @kxld_object_get_symtab(i32* %22)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i32* @kxld_object_get_symtab(i32* %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %108

28:                                               ; preds = %5
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* @kxld_sym_is_undefined, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i32 @kxld_symtab_iterator_init(i32* %12, i32* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %56, %45, %28
  %34 = call i8* @kxld_symtab_iterator_get_next(i32* %12)
  %35 = bitcast i8* %34 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %16, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.TYPE_4__* @kxld_symtab_get_locally_defined_symbol_by_name(i32* %38, i32* %41)
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %15, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @kKxldLogLinking, align 4
  %47 = load i32, i32* @kKxldLogWarn, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @kxld_object_get_name(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @kxld_object_get_name(i32* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 (i32, i32, i8*, i32, i32, i32*, ...) @kxld_log(i32 %46, i32 %47, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51, i32* %54)
  br label %33

56:                                               ; preds = %37
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %62 = call i32 @kxld_dict_insert(i32* %57, i32* %60, %struct.TYPE_4__* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @finish, align 4
  %65 = call i32 @require_noerr(i32 %63, i32 %64)
  br label %33

66:                                               ; preds = %33
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* @kxld_sym_is_indirect, align 4
  %69 = load i32, i32* @FALSE, align 4
  %70 = call i32 @kxld_symtab_iterator_init(i32* %12, i32* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %97, %83, %66
  %72 = call i8* @kxld_symtab_iterator_get_next(i32* %12)
  %73 = bitcast i8* %72 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %73, %struct.TYPE_4__** %16, align 8
  %74 = icmp ne %struct.TYPE_4__* %73, null
  br i1 %74, label %75, label %107

75:                                               ; preds = %71
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call %struct.TYPE_4__* @kxld_symtab_get_locally_defined_symbol_by_name(i32* %76, i32* %79)
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %15, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %75
  %84 = load i32, i32* @kKxldLogLinking, align 4
  %85 = load i32, i32* @kKxldLogWarn, align 4
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @kxld_object_get_name(i32* %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @kxld_object_get_name(i32* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 (i32, i32, i8*, i32, i32, i32*, ...) @kxld_log(i32 %84, i32 %85, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %89, i32* %92, i32* %95)
  br label %71

97:                                               ; preds = %75
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %103 = call i32 @kxld_dict_insert(i32* %98, i32* %101, %struct.TYPE_4__* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @finish, align 4
  %106 = call i32 @require_noerr(i32 %104, i32 %105)
  br label %71

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107, %5
  %109 = load i32*, i32** %9, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %108
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* @kxld_sym_is_obsolete, align 4
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @kxld_symtab_iterator_init(i32* %12, i32* %112, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %120, %111
  %117 = call i8* @kxld_symtab_iterator_get_next(i32* %12)
  %118 = bitcast i8* %117 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %15, align 8
  %119 = icmp ne %struct.TYPE_4__* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32*, i32** %9, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %126 = call i32 @kxld_dict_insert(i32* %121, i32* %124, %struct.TYPE_4__* %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @finish, align 4
  %129 = call i32 @require_noerr(i32 %127, i32 %128)
  br label %116

130:                                              ; preds = %116
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %153

134:                                              ; preds = %131
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @kxld_sym_is_cxx, align 4
  %137 = load i32, i32* @FALSE, align 4
  %138 = call i32 @kxld_symtab_iterator_init(i32* %12, i32* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %143, %134
  %140 = call i8* @kxld_symtab_iterator_get_next(i32* %12)
  %141 = bitcast i8* %140 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %15, align 8
  %142 = icmp ne %struct.TYPE_4__* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %148 = call i32 @kxld_dict_insert(i32* %144, i32* %146, %struct.TYPE_4__* %147)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @finish, align 4
  %151 = call i32 @require_noerr(i32 %149, i32 %150)
  br label %139

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %131
  %154 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %11, align 4
  ret i32 %156
}

declare dso_local i32 @check(i32*) #1

declare dso_local i32* @kxld_object_get_symtab(i32*) #1

declare dso_local i32 @kxld_symtab_iterator_init(i32*, i32*, i32, i32) #1

declare dso_local i8* @kxld_symtab_iterator_get_next(i32*) #1

declare dso_local %struct.TYPE_4__* @kxld_symtab_get_locally_defined_symbol_by_name(i32*, i32*) #1

declare dso_local i32 @kxld_log(i32, i32, i8*, i32, i32, i32*, ...) #1

declare dso_local i32 @kxld_object_get_name(i32*) #1

declare dso_local i32 @kxld_dict_insert(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @require_noerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
