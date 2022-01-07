; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_2html.c_do_type.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_2html.c_do_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@do_type.typename = internal global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"</ul>\0A\00", align 1
@ARRAY = common dso_local global i32 0, align 4
@CONST = common dso_local global i32 0, align 4
@ENUM = common dso_local global i32 0, align 4
@FLOAT = common dso_local global i32 0, align 4
@FUNCTION = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@POINTER = common dso_local global i32 0, align 4
@STRUCT = common dso_local global i32 0, align 4
@UNION = common dso_local global i32 0, align 4
@UNSIGNED = common dso_local global i32 0, align 4
@VOID = common dso_local global i32 0, align 4
@VOLATILE = common dso_local global i32 0, align 4
@enum_list = common dso_local global i32 0, align 4
@field_list = common dso_local global i32 0, align 4
@fields = common dso_local global i32 0, align 4
@formals = common dso_local global i32 0, align 4
@identifier = common dso_local global i32 0, align 4
@ids = common dso_local global i32 0, align 4
@tag = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@uid_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @do_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_type(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %6 [
  ]

6:                                                ; preds = %1
  %7 = call i32 @assert(i32 0)
  br label %8

8:                                                ; preds = %6
  %9 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
