; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_add_package_decls.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_add_package_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@DECL_NOTE = common dso_local global i64 0, align 8
@decl_note_names = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unknown declaration #directive '%s'\00", align 1
@declare_note_name = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"#declare_note takes 1 argument\00", align 1
@EXPR_NAME = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"#declare_note argument must be name\00", align 1
@static_assert_name = common dso_local global i64 0, align 8
@flag_lazy = common dso_local global i32 0, align 4
@DECL_IMPORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_package_decls(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %110, %1
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %113

12:                                               ; preds = %6
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %15, i64 %16
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %4, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DECL_NOTE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @map_get(i32* @decl_note_names, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @warning(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %31, %24
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @declare_note_name, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fatal_error(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %5, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @EXPR_NAME, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @fatal_error(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %58
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @map_put(i32* @decl_note_names, i32 %79, i8* inttoptr (i64 1 to i8*))
  br label %97

81:                                               ; preds = %40
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @static_assert_name, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32, i32* @flag_lazy, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = call i32 @resolve_static_assert(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %93)
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %76
  br label %109

98:                                               ; preds = %12
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DECL_IMPORT, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %108

105:                                              ; preds = %98
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %107 = call i32 @sym_global_decl(%struct.TYPE_11__* %106)
  br label %108

108:                                              ; preds = %105, %104
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %3, align 8
  br label %6

113:                                              ; preds = %6
  ret void
}

declare dso_local i32 @map_get(i32*, i64) #1

declare dso_local i32 @warning(i32, i8*, i64) #1

declare dso_local i32 @fatal_error(i32, i8*) #1

declare dso_local i32 @map_put(i32*, i32, i8*) #1

declare dso_local i32 @resolve_static_assert(%struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @sym_global_decl(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
