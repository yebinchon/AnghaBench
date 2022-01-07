; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_ErrorIfFunctionDependsOnExtension.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_function.c_ErrorIfFunctionDependsOnExtension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"unable to create a distributed function from functions owned by an extension\00", align 1
@.str.1 = private unnamed_addr constant [171 x i8] c"Function \22%s\22 has a dependency on extension \22%s\22. Functions depending on an extension cannot be distributed. Create the function by creating the extension on the workers.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @ErrorIfFunctionDependsOnExtension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ErrorIfFunctionDependsOnExtension(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i64 @IsObjectAddressOwnedByExtension(%struct.TYPE_6__* %7, %struct.TYPE_6__* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = call i8* @getObjectIdentity(%struct.TYPE_6__* %11)
  store i8* %12, i8** %4, align 8
  %13 = call i8* @getObjectIdentity(%struct.TYPE_6__* %3)
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @ERROR, align 4
  %15 = call i32 @errmsg(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @errdetail(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %17)
  %19 = call i32 @ereport(i32 %14, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IsObjectAddressOwnedByExtension(%struct.TYPE_6__*, %struct.TYPE_6__*) #2

declare dso_local i8* @getObjectIdentity(%struct.TYPE_6__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @errdetail(i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
