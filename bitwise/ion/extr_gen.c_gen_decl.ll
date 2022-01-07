; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_decl.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__, %struct.TYPE_15__, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"#define %s (\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"(%s)(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"THREADLOCAL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"typedef %s;\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"typedef int %s;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_decl(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 7
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = icmp ne %struct.TYPE_17__* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = call i64 @is_decl_foreign(%struct.TYPE_17__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %133

14:                                               ; preds = %9
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gen_sync_pos(i32 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %129 [
    i32 135, label %22
    i32 128, label %53
    i32 133, label %92
    i32 131, label %96
    i32 129, label %96
    i32 130, label %99
    i32 134, label %108
    i32 132, label %128
  ]

22:                                               ; preds = %14
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %24 = call i8* @get_gen_name(%struct.TYPE_17__* %23)
  %25 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @typespec_to_cdecl(i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %37 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %31, %22
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @gen_expr(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %38
  %52 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %131

53:                                               ; preds = %14
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = call i32 @is_decl_threadlocal(%struct.TYPE_17__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @is_incomplete_array_typespec(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %79 = call i8* @get_gen_name(%struct.TYPE_17__* %78)
  %80 = call i8* @typespec_to_cdecl(i32 %77, i8* %79)
  %81 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  br label %90

82:                                               ; preds = %66, %59
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = call i8* @get_gen_name(%struct.TYPE_17__* %86)
  %88 = call i32 @type_to_cdecl(i32 %85, i8* %87)
  %89 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82, %73
  %91 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %131

92:                                               ; preds = %14
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %94 = call i32 @gen_func_decl(%struct.TYPE_17__* %93)
  %95 = call i32 (i8*, ...) @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %131

96:                                               ; preds = %14, %14
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %98 = call i32 @gen_aggregate(%struct.TYPE_17__* %97)
  br label %131

99:                                               ; preds = %14
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = call i8* @get_gen_name(%struct.TYPE_17__* %104)
  %106 = call i8* @typespec_to_cdecl(i32 %103, i8* %105)
  %107 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %106)
  br label %131

108:                                              ; preds = %14
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = call i8* @get_gen_name(%struct.TYPE_17__* %119)
  %121 = call i8* @typespec_to_cdecl(i32 %118, i8* %120)
  %122 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  br label %127

123:                                              ; preds = %108
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = call i8* @get_gen_name(%struct.TYPE_17__* %124)
  %126 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %123, %114
  br label %131

128:                                              ; preds = %14
  br label %131

129:                                              ; preds = %14
  %130 = call i32 @assert(i32 0)
  br label %131

131:                                              ; preds = %129, %128, %127, %99, %96, %92, %90, %51
  %132 = call i32 (...) @genln()
  br label %133

133:                                              ; preds = %131, %13
  ret void
}

declare dso_local i64 @is_decl_foreign(%struct.TYPE_17__*) #1

declare dso_local i32 @gen_sync_pos(i32) #1

declare dso_local i32 @genlnf(i8*, ...) #1

declare dso_local i8* @get_gen_name(%struct.TYPE_17__*) #1

declare dso_local i32 @genf(i8*, ...) #1

declare dso_local i8* @typespec_to_cdecl(i32, i8*) #1

declare dso_local i32 @gen_expr(i32) #1

declare dso_local i32 @is_decl_threadlocal(%struct.TYPE_17__*) #1

declare dso_local i32 @is_incomplete_array_typespec(i32) #1

declare dso_local i32 @type_to_cdecl(i32, i8*) #1

declare dso_local i32 @gen_func_decl(%struct.TYPE_17__*) #1

declare dso_local i32 @gen_aggregate(%struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @genln(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
