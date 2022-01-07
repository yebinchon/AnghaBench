; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_eof_packet.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_eof_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@CLIENT_PROTOCOL_41 = common dso_local global i32 0, align 4
@MYSQLD_PACKET_EOF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"%s: expected the first byte to be 0xfe, got %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_eof_packet(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %11 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  store i32 %11, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @network_mysqld_proto_get_int8(i32* %15, i64* %6)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %76

24:                                               ; preds = %18
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MYSQLD_PACKET_EOF, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @G_STRLOC, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @g_critical(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %30)
  store i32 -1, i32* %3, align 4
  br label %76

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CLIENT_PROTOCOL_41, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i64 @network_mysqld_proto_get_int16(i32* %41, i8** %8)
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ true, %37 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @network_mysqld_proto_get_int16(i32* %50, i8** %7)
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %49, %44
  %54 = phi i1 [ true, %44 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %58, %53
  br label %71

66:                                               ; preds = %32
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i8* null, i8** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i8* null, i8** %70, align 8
  br label %71

71:                                               ; preds = %66, %65
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 -1, i32 0
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %28, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @network_mysqld_proto_get_int8(i32*, i64*) #1

declare dso_local i32 @g_critical(i8*, i32, i64) #1

declare dso_local i64 @network_mysqld_proto_get_int16(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
