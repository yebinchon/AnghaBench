; ModuleID = '/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_set_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/midi/drivers/extr_alsa_midi.c_alsa_midi_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SND_SEQ_PORT_CAP_READ = common dso_local global i32 0, align 4
@SND_SEQ_PORT_CAP_SUBS_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"in\00", align 1
@SND_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SND_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4
@SND_SEQ_PORT_TYPE_APPLICATION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"[MIDI]: snd_seq_create_simple_port failed with error %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"[MIDI]: snd_seq_subscribe_port failed with error %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @alsa_midi_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_midi_set_input(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @snd_seq_delete_simple_port(i32 %22, i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %19, %13
  store i32 1, i32* %3, align 4
  br label %94

32:                                               ; preds = %2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* @SND_SEQ_PORT_CAP_READ, align 4
  %38 = load i32, i32* @SND_SEQ_PORT_CAP_SUBS_READ, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = call i32 @alsa_midi_get_port(i32 %35, i8* %36, i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %94

45:                                               ; preds = %32
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SND_SEQ_PORT_CAP_WRITE, align 4
  %50 = load i32, i32* @SND_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @SND_SEQ_PORT_TYPE_APPLICATION, align 4
  %53 = call i32 @snd_seq_create_simple_port(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %3, align 4
  br label %94

59:                                               ; preds = %45
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_seq_client_id(i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = call i32 @snd_seq_port_subscribe_alloca(i32** %7)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = call i32 @snd_seq_port_subscribe_set_sender(i32* %72, i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = call i32 @snd_seq_port_subscribe_set_dest(i32* %76, %struct.TYPE_4__* %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @snd_seq_subscribe_port(i32 %82, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %59
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %59
  %91 = load i32, i32* %6, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %56, %44, %31
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @snd_seq_delete_simple_port(i32, i32) #1

declare dso_local i32 @alsa_midi_get_port(i32, i8*, i32, i32*) #1

declare dso_local i32 @snd_seq_create_simple_port(i32, i8*, i32, i32) #1

declare dso_local i32 @RARCH_ERR(i8*, i32) #1

declare dso_local i32 @snd_seq_client_id(i32) #1

declare dso_local i32 @snd_seq_port_subscribe_alloca(i32**) #1

declare dso_local i32 @snd_seq_port_subscribe_set_sender(i32*, i32*) #1

declare dso_local i32 @snd_seq_port_subscribe_set_dest(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @snd_seq_subscribe_port(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
