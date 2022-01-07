; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_disk_full_delete.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_cttest_binlog_disk_full_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32 }

@size = common dso_local global i32 0, align 4
@wrapfalloc = common dso_local global i32 0, align 4
@falloc = common dso_local global i32* null, align 8
@fallocpat = common dso_local global i32* null, align 8
@srv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"put 0 0 100 50\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"INSERTED 1\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"INSERTED 2\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"INSERTED 3\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"INSERTED 4\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"INSERTED 5\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"INSERTED 6\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"INSERTED 7\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"INSERTED 8\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"OUT_OF_MEMORY\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"%s/binlog.1\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"delete 1\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"DELETED\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"delete 2\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"delete 3\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"delete 4\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"delete 5\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"delete 6\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"delete 7\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"delete 8\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cttest_binlog_disk_full_delete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 1000, i32* @size, align 4
  store i32* @wrapfalloc, i32** @falloc, align 8
  %4 = load i32*, i32** @fallocpat, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 1, i32* %5, align 4
  %6 = load i32*, i32** @fallocpat, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1, i32* %7, align 4
  %8 = call i32 (...) @ctdir()
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 0), align 8
  %9 = load i32, i32* @size, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 1), align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @srv, i32 0, i32 0, i32 2), align 8
  %10 = call i32 (...) @SERVER()
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mustdiallocal(i32 %11)
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @mustsend(i32 %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @mustsend(i32 %15, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ckresp(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @mustsend(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @mustsend(i32 %21, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @ckresp(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @mustsend(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @mustsend(i32 %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @ckresp(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @mustsend(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @mustsend(i32 %33, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @ckresp(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @mustsend(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @mustsend(i32 %39, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @ckresp(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @mustsend(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @mustsend(i32 %45, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @ckresp(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = call i32 @mustsend(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @mustsend(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ckresp(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @mustsend(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @mustsend(i32 %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @ckresp(i32 %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @mustsend(i32 %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @mustsend(i32 %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @ckresp(i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %67 = call i32 (...) @ctdir()
  %68 = call i8* @fmtalloc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %67)
  store i8* %68, i8** %3, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @exist(i8* %69)
  %71 = call i32 @assert(i32 %70)
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @mustsend(i32 %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %76 = load i32, i32* %2, align 4
  %77 = call i32 @ckresp(i32 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @mustsend(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @ckresp(i32 %80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %82 = load i32, i32* %2, align 4
  %83 = call i32 @mustsend(i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @ckresp(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @mustsend(i32 %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @ckresp(i32 %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @mustsend(i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @ckresp(i32 %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %94 = load i32, i32* %2, align 4
  %95 = call i32 @mustsend(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @ckresp(i32 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %98 = load i32, i32* %2, align 4
  %99 = call i32 @mustsend(i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %100 = load i32, i32* %2, align 4
  %101 = call i32 @ckresp(i32 %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %102 = load i32, i32* %2, align 4
  %103 = call i32 @mustsend(i32 %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %104 = load i32, i32* %2, align 4
  %105 = call i32 @ckresp(i32 %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ctdir(...) #1

declare dso_local i32 @SERVER(...) #1

declare dso_local i32 @mustdiallocal(i32) #1

declare dso_local i32 @mustsend(i32, i8*) #1

declare dso_local i32 @ckresp(i32, i8*) #1

declare dso_local i8* @fmtalloc(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @exist(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
