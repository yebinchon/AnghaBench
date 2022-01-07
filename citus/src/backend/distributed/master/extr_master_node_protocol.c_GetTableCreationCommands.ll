; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableCreationCommands.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/master/extr_master_node_protocol.c_GetTableCreationCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@NIL = common dso_local global i8* null, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetTableCreationCommands(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** @NIL, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %5, align 8
  store i8 0, i8* %6, align 1
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %15 = load i32, i32* @CurrentMemoryContext, align 4
  %16 = call %struct.TYPE_4__* @GetOverrideSearchPath(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %10, align 8
  %17 = load i8*, i8** @NIL, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = call i32 @PushOverrideSearchPath(%struct.TYPE_4__* %22)
  %24 = load i32, i32* %3, align 4
  %25 = call signext i8 @get_rel_relkind(i32 %24)
  store i8 %25, i8* %6, align 1
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %2
  %32 = load i32, i32* %3, align 4
  %33 = call i8* @pg_get_extensiondef_string(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i8* @pg_get_serverdef_string(i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32* @lappend(i32* %39, i8* %40)
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32* @lappend(i32* %43, i8* %44)
  store i32* %45, i32** %5, align 8
  br label %46

46:                                               ; preds = %42, %2
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @pg_get_tableschemadef_string(i32 %47, i32 %48)
  store i8* %49, i8** %7, align 8
  %50 = load i32, i32* %3, align 4
  %51 = call i8* @pg_get_tablecolumnoptionsdef_string(i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32* @lappend(i32* %52, i8* %53)
  store i32* %54, i32** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32* @lappend(i32* %58, i8* %59)
  store i32* %60, i32** %5, align 8
  br label %61

61:                                               ; preds = %57, %46
  %62 = load i32, i32* %3, align 4
  %63 = call i8* @TableOwnerResetCommand(i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32* @lappend(i32* %67, i8* %68)
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = call i32 (...) @PopOverrideSearchPath()
  %72 = load i32*, i32** %5, align 8
  ret i32* %72
}

declare dso_local %struct.TYPE_4__* @GetOverrideSearchPath(i32) #1

declare dso_local i32 @PushOverrideSearchPath(%struct.TYPE_4__*) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i8* @pg_get_extensiondef_string(i32) #1

declare dso_local i8* @pg_get_serverdef_string(i32) #1

declare dso_local i32* @lappend(i32*, i8*) #1

declare dso_local i8* @pg_get_tableschemadef_string(i32, i32) #1

declare dso_local i8* @pg_get_tablecolumnoptionsdef_string(i32) #1

declare dso_local i8* @TableOwnerResetCommand(i32) #1

declare dso_local i32 @PopOverrideSearchPath(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
