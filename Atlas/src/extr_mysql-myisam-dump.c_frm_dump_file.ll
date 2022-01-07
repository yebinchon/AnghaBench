; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_mysql-myisam-dump.c_frm_dump_file.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_mysql-myisam-dump.c_frm_dump_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frm_dump_file(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32* @g_mapped_file_new(i8* %11, i32 %12, %struct.TYPE_11__** %8)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @G_STRLOC, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @g_critical(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = call i32 @g_error_free(%struct.TYPE_11__* %22)
  store i32 -1, i32* %3, align 4
  br label %74

24:                                               ; preds = %2
  %25 = call %struct.TYPE_10__* (...) @network_packet_new()
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %6, align 8
  %26 = call %struct.TYPE_12__* @g_string_new(i32* null)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @g_mapped_file_get_contents(i32* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @g_mapped_file_get_length(i32* %35)
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  %41 = call i32* (...) @network_mysqld_frm_new()
  store i32* %41, i32** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %24
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i64 @network_mysqld_proto_get_frm(%struct.TYPE_10__* %45, i32* %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %44, %24
  %50 = phi i1 [ true, %24 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @network_mysqld_frm_print(i32* %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @network_mysqld_myd_print(i32* %57, i8* %58)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @g_mapped_file_free(i32* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @g_string_free(%struct.TYPE_12__* %65, i32 %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = call i32 @network_packet_free(%struct.TYPE_10__* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 0
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %60, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32* @g_mapped_file_new(i8*, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @g_critical(i8*, i32, i32) #1

declare dso_local i32 @g_error_free(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @network_packet_new(...) #1

declare dso_local %struct.TYPE_12__* @g_string_new(i32*) #1

declare dso_local i32 @g_mapped_file_get_contents(i32*) #1

declare dso_local i32 @g_mapped_file_get_length(i32*) #1

declare dso_local i32* @network_mysqld_frm_new(...) #1

declare dso_local i64 @network_mysqld_proto_get_frm(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @network_mysqld_frm_print(i32*) #1

declare dso_local i32 @network_mysqld_myd_print(i32*, i8*) #1

declare dso_local i32 @g_mapped_file_free(i32*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @network_packet_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
