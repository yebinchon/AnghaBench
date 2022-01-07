; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_stmt_prepare_ok_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_stmt_prepare_ok_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s: expected the first byte to be %02x, got %02x\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_stmt_prepare_ok_packet(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @network_mysqld_proto_get_int8(i32* %15, i32* %6)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %97

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 0, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @G_STRLOC, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @g_critical(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %28, i32 0, i32 %29)
  store i32 -1, i32* %3, align 4
  br label %97

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @network_mysqld_proto_get_int32(i32* %35, i32* %10)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ true, %31 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @network_mysqld_proto_get_int16(i32* %44, i8** %7)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %38
  %48 = phi i1 [ true, %38 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @network_mysqld_proto_get_int16(i32* %53, i8** %8)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ true, %47 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @network_mysqld_proto_skip(i32* %62, i32 1)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ true, %56 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %4, align 8
  %72 = call i64 @network_mysqld_proto_get_int16(i32* %71, i8** %9)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i1 [ true, %65 ], [ %73, %70 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %79, %74
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 -1, i32 0
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %27, %23
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i32*) #1

declare dso_local i32 @g_critical(i8*, i32, i32, i32) #1

declare dso_local i64 @network_mysqld_proto_get_int32(i32*, i32*) #1

declare dso_local i64 @network_mysqld_proto_get_int16(i32*, i8**) #1

declare dso_local i64 @network_mysqld_proto_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
