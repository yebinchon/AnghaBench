; ModuleID = '/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_get_avail_ports.c'
source_filename = "/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_get_avail_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%union.string_list_elem_attr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@SND_SEQ_OPEN_DUPLEX = common dso_local global i32 0, align 4
@SND_SEQ_NONBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"[MIDI]: snd_seq_open failed with error %d.\0A\00", align 1
@SND_SEQ_PORT_TYPE_MIDI_GENERIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"[MIDI]: string_list_append failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i32)* @alsa_midi_get_avail_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_midi_get_avail_ports(%struct.string_list* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %union.string_list_elem_attr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = bitcast %union.string_list_elem_attr* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = call i32 @snd_seq_client_info_alloca(i32** %8)
  %17 = call i32 @snd_seq_port_info_alloca(i32** %9)
  %18 = load i32, i32* @SND_SEQ_OPEN_DUPLEX, align 4
  %19 = load i32, i32* @SND_SEQ_NONBLOCK, align 4
  %20 = call i32 @snd_seq_open(i32** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %81

26:                                               ; preds = %2
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @snd_seq_client_info_set_client(i32* %27, i32 -1)
  br label %29

29:                                               ; preds = %77, %26
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i64 @snd_seq_query_next_client(i32* %30, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @snd_seq_client_info_get_client(i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @snd_seq_port_info_set_client(i32* %37, i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @snd_seq_port_info_set_port(i32* %40, i32 -1)
  br label %42

42:                                               ; preds = %76, %34
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @snd_seq_query_next_port(i32* %43, i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @snd_seq_port_info_get_capability(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @snd_seq_port_info_get_type(i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @SND_SEQ_PORT_TYPE_MIDI_GENERIC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  %64 = call i8* @snd_seq_port_info_get_name(i32* %63)
  store i8* %64, i8** %14, align 8
  %65 = load %struct.string_list*, %struct.string_list** %4, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = getelementptr inbounds %union.string_list_elem_attr, %union.string_list_elem_attr* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @string_list_append(%struct.string_list* %65, i8* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @snd_seq_close(i32* %73)
  store i32 0, i32* %3, align 4
  br label %81

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %56, %47
  br label %42

77:                                               ; preds = %42
  br label %29

78:                                               ; preds = %29
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @snd_seq_close(i32* %79)
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %71, %23
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snd_seq_client_info_alloca(i32**) #2

declare dso_local i32 @snd_seq_port_info_alloca(i32**) #2

declare dso_local i32 @snd_seq_open(i32**, i8*, i32, i32) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @snd_seq_client_info_set_client(i32*, i32) #2

declare dso_local i64 @snd_seq_query_next_client(i32*, i32*) #2

declare dso_local i32 @snd_seq_client_info_get_client(i32*) #2

declare dso_local i32 @snd_seq_port_info_set_client(i32*, i32) #2

declare dso_local i32 @snd_seq_port_info_set_port(i32*, i32) #2

declare dso_local i64 @snd_seq_query_next_port(i32*, i32*) #2

declare dso_local i32 @snd_seq_port_info_get_capability(i32*) #2

declare dso_local i32 @snd_seq_port_info_get_type(i32*) #2

declare dso_local i8* @snd_seq_port_info_get_name(i32*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*, i32) #2

declare dso_local i32 @snd_seq_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
