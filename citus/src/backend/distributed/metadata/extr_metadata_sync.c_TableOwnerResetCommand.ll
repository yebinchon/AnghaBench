; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_TableOwnerResetCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_metadata_sync.c_TableOwnerResetCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [27 x i8] c"ALTER TABLE %s OWNER TO %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @TableOwnerResetCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call %struct.TYPE_4__* (...) @makeStringInfo()
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @generate_qualified_relation_name(i32 %7)
  store i8* %8, i8** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @TableOwner(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @quote_identifier(i8* %13)
  %15 = call i32 @appendStringInfo(%struct.TYPE_4__* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  ret i8* %18
}

declare dso_local %struct.TYPE_4__* @makeStringInfo(...) #1

declare dso_local i8* @generate_qualified_relation_name(i32) #1

declare dso_local i8* @TableOwner(i32) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_4__*, i8*, i8*, i32) #1

declare dso_local i32 @quote_identifier(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
